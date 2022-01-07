
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs4_delegation {TYPE_1__* dl_file; int dl_time; int dl_recall_lru; int dl_count; } ;
struct file_lock {scalar_t__ fl_break_time; scalar_t__ fl_owner; } ;
struct TYPE_2__ {int fi_had_conflict; } ;


 int atomic_inc (int *) ;
 int del_recall_lru ;
 int dprintk (char*,struct nfs4_delegation*,struct file_lock*) ;
 int get_seconds () ;
 int list_add_tail (int *,int *) ;
 int nfsd4_cb_recall (struct nfs4_delegation*) ;
 int recall_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static
void nfsd_break_deleg_cb(struct file_lock *fl)
{
 struct nfs4_delegation *dp = (struct nfs4_delegation *)fl->fl_owner;

 dprintk("NFSD nfsd_break_deleg_cb: dp %p fl %p\n",dp,fl);
 if (!dp)
  return;






 atomic_inc(&dp->dl_count);

 spin_lock(&recall_lock);
 list_add_tail(&dp->dl_recall_lru, &del_recall_lru);
 spin_unlock(&recall_lock);


 dp->dl_time = get_seconds();






 fl->fl_break_time = 0;

 dp->dl_file->fi_had_conflict = 1;
 nfsd4_cb_recall(dp);
}
