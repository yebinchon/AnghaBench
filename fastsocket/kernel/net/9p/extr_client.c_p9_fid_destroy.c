
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fid {struct p9_fid* rdir; int flist; int fid; struct p9_client* clnt; } ;
struct p9_client {int lock; int fidpool; } ;


 int P9_DEBUG_FID ;
 int P9_DPRINTK (int ,char*,int ) ;
 int kfree (struct p9_fid*) ;
 int list_del (int *) ;
 int p9_idpool_put (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void p9_fid_destroy(struct p9_fid *fid)
{
 struct p9_client *clnt;
 unsigned long flags;

 P9_DPRINTK(P9_DEBUG_FID, "fid %d\n", fid->fid);
 clnt = fid->clnt;
 p9_idpool_put(fid->fid, clnt->fidpool);
 spin_lock_irqsave(&clnt->lock, flags);
 list_del(&fid->flist);
 spin_unlock_irqrestore(&clnt->lock, flags);
 kfree(fid->rdir);
 kfree(fid);
}
