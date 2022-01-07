
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int flags; int uid; void* aname; void* uname; struct p9_fid* clnt; scalar_t__ maxdata; int dfltgid; int dfltuid; int slist; } ;
struct p9_fid {int uid; scalar_t__ msize; int dotu; } ;


 int EINVAL ;
 int ENOMEM ;
 struct p9_fid* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct p9_fid*) ;
 int P9_DEBUG_ERROR ;
 int P9_DPRINTK (int ,char*) ;
 scalar_t__ P9_IOHDRSZ ;
 int PTR_ERR (struct p9_fid*) ;
 int V9FS_ACCESS_ANY ;
 int V9FS_ACCESS_MASK ;
 int V9FS_ACCESS_SINGLE ;
 int V9FS_ACCESS_USER ;
 int V9FS_DEFANAME ;
 int V9FS_DEFGID ;
 int V9FS_DEFUID ;
 int V9FS_DEFUSER ;
 int V9FS_EXTENDED ;
 void* __getname () ;
 int __putname (void*) ;
 int list_add (int *,int *) ;
 struct p9_fid* p9_client_attach (struct p9_fid*,int *,void*,int ,void*) ;
 struct p9_fid* p9_client_create (char const*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strcpy (void*,int ) ;
 int v9fs_cache_session_get_cookie (struct v9fs_session_info*) ;
 int v9fs_extended (struct v9fs_session_info*) ;
 int v9fs_parse_options (struct v9fs_session_info*,char*) ;
 int v9fs_sessionlist ;
 int v9fs_sessionlist_lock ;

struct p9_fid *v9fs_session_init(struct v9fs_session_info *v9ses,
    const char *dev_name, char *data)
{
 int retval = -EINVAL;
 struct p9_fid *fid;
 int rc;

 v9ses->uname = __getname();
 if (!v9ses->uname)
  return ERR_PTR(-ENOMEM);

 v9ses->aname = __getname();
 if (!v9ses->aname) {
  __putname(v9ses->uname);
  return ERR_PTR(-ENOMEM);
 }

 spin_lock(&v9fs_sessionlist_lock);
 list_add(&v9ses->slist, &v9fs_sessionlist);
 spin_unlock(&v9fs_sessionlist_lock);

 v9ses->flags = V9FS_EXTENDED | V9FS_ACCESS_USER;
 strcpy(v9ses->uname, V9FS_DEFUSER);
 strcpy(v9ses->aname, V9FS_DEFANAME);
 v9ses->uid = ~0;
 v9ses->dfltuid = V9FS_DEFUID;
 v9ses->dfltgid = V9FS_DEFGID;

 rc = v9fs_parse_options(v9ses, data);
 if (rc < 0) {
  retval = rc;
  goto error;
 }

 v9ses->clnt = p9_client_create(dev_name, data);
 if (IS_ERR(v9ses->clnt)) {
  retval = PTR_ERR(v9ses->clnt);
  v9ses->clnt = ((void*)0);
  P9_DPRINTK(P9_DEBUG_ERROR, "problem initializing 9p client\n");
  goto error;
 }

 if (!v9ses->clnt->dotu)
  v9ses->flags &= ~V9FS_EXTENDED;

 v9ses->maxdata = v9ses->clnt->msize - P9_IOHDRSZ;


 if (!v9fs_extended(v9ses) &&
  ((v9ses->flags&V9FS_ACCESS_MASK) == V9FS_ACCESS_USER)) {

  v9ses->flags &= ~V9FS_ACCESS_MASK;
  v9ses->flags |= V9FS_ACCESS_ANY;
  v9ses->uid = ~0;
 }

 fid = p9_client_attach(v9ses->clnt, ((void*)0), v9ses->uname, ~0,
       v9ses->aname);
 if (IS_ERR(fid)) {
  retval = PTR_ERR(fid);
  fid = ((void*)0);
  P9_DPRINTK(P9_DEBUG_ERROR, "cannot attach\n");
  goto error;
 }

 if ((v9ses->flags & V9FS_ACCESS_MASK) == V9FS_ACCESS_SINGLE)
  fid->uid = v9ses->uid;
 else
  fid->uid = ~0;






 return fid;

error:
 return ERR_PTR(retval);
}
