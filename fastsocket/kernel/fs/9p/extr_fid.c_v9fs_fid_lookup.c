
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v9fs_session_info {int flags; char* uname; int aname; int clnt; int uid; } ;
struct p9_fid {int dummy; } ;
struct TYPE_2__ {scalar_t__ name; } ;
struct dentry {TYPE_1__ d_name; struct dentry* d_parent; int d_inode; } ;


 int ENOMEM ;
 int EPERM ;
 struct p9_fid* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct p9_fid*) ;
 int IS_ROOT (struct dentry*) ;
 int P9_MAXWELEM ;

 int V9FS_ACCESS_MASK ;


 int current_fsuid () ;
 int kfree (char**) ;
 char** kmalloc (int,int ) ;
 int min (int,int ) ;
 struct p9_fid* p9_client_attach (int ,int *,char*,int ,int ) ;
 struct p9_fid* p9_client_walk (struct p9_fid*,int,char**,int) ;
 scalar_t__ v9fs_extended (struct v9fs_session_info*) ;
 int v9fs_fid_add (struct dentry*,struct p9_fid*) ;
 struct p9_fid* v9fs_fid_find (struct dentry*,int ,int) ;
 struct v9fs_session_info* v9fs_inode2v9ses (int ) ;

struct p9_fid *v9fs_fid_lookup(struct dentry *dentry)
{
 int i, n, l, clone, any, access;
 u32 uid;
 struct p9_fid *fid;
 struct dentry *d, *ds;
 struct v9fs_session_info *v9ses;
 char **wnames, *uname;

 v9ses = v9fs_inode2v9ses(dentry->d_inode);
 access = v9ses->flags & V9FS_ACCESS_MASK;
 switch (access) {
 case 129:
 case 128:
  uid = current_fsuid();
  any = 0;
  break;

 case 130:
  uid = v9ses->uid;
  any = 1;
  break;

 default:
  uid = ~0;
  any = 0;
  break;
 }

 fid = v9fs_fid_find(dentry, uid, any);
 if (fid)
  return fid;

 ds = dentry->d_parent;
 fid = v9fs_fid_find(ds, uid, any);
 if (!fid) {
  n = 0;
  for (ds = dentry; !IS_ROOT(ds); ds = ds->d_parent)
   n++;

  fid = v9fs_fid_find(ds, uid, any);
  if (!fid) {
   if (access == 129)
    return ERR_PTR(-EPERM);

   if (v9fs_extended(v9ses))
    uname = ((void*)0);
   else
    uname = v9ses->uname;

   fid = p9_client_attach(v9ses->clnt, ((void*)0), uname, uid,
    v9ses->aname);

   if (IS_ERR(fid))
    return fid;

   v9fs_fid_add(ds, fid);
  }
 } else
  n = 1;

 if (ds == dentry)
  return fid;

 wnames = kmalloc(sizeof(char *) * n, GFP_KERNEL);
 if (!wnames)
  return ERR_PTR(-ENOMEM);

 for (d = dentry, i = (n-1); i >= 0; i--, d = d->d_parent)
  wnames[i] = (char *) d->d_name.name;

 clone = 1;
 i = 0;
 while (i < n) {
  l = min(n - i, P9_MAXWELEM);
  fid = p9_client_walk(fid, l, &wnames[i], clone);
  if (IS_ERR(fid)) {
   kfree(wnames);
   return fid;
  }

  i += l;
  clone = 0;
 }

 kfree(wnames);
 v9fs_fid_add(dentry, fid);
 return fid;
}
