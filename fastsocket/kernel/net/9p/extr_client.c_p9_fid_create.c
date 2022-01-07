
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_qid {int dummy; } ;
struct p9_fid {int fid; int mode; int flist; int * rdir; struct p9_client* clnt; int uid; int qid; } ;
struct p9_client {int lock; int fidlist; int fidpool; } ;


 int ENOMEM ;
 int ENOSPC ;
 struct p9_fid* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int P9_DEBUG_FID ;
 int P9_DPRINTK (int ,char*,struct p9_client*) ;
 int current_fsuid () ;
 int kfree (struct p9_fid*) ;
 struct p9_fid* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memset (int *,int ,int) ;
 int p9_idpool_get (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct p9_fid *p9_fid_create(struct p9_client *clnt)
{
 int ret;
 struct p9_fid *fid;
 unsigned long flags;

 P9_DPRINTK(P9_DEBUG_FID, "clnt %p\n", clnt);
 fid = kmalloc(sizeof(struct p9_fid), GFP_KERNEL);
 if (!fid)
  return ERR_PTR(-ENOMEM);

 ret = p9_idpool_get(clnt->fidpool);
 if (ret < 0) {
  ret = -ENOSPC;
  goto error;
 }
 fid->fid = ret;

 memset(&fid->qid, 0, sizeof(struct p9_qid));
 fid->mode = -1;
 fid->uid = current_fsuid();
 fid->clnt = clnt;
 fid->rdir = ((void*)0);
 spin_lock_irqsave(&clnt->lock, flags);
 list_add(&fid->flist, &clnt->fidlist);
 spin_unlock_irqrestore(&clnt->lock, flags);

 return fid;

error:
 kfree(fid);
 return ERR_PTR(ret);
}
