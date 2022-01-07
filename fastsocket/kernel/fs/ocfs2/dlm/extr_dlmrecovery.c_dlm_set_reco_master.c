
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int new_master; } ;
struct dlm_ctxt {TYPE_1__ reco; int name; int spinlock; } ;


 int assert_spin_locked (int *) ;
 int mlog (int ,char*,int ,int ,int ) ;

__attribute__((used)) static inline void dlm_set_reco_master(struct dlm_ctxt *dlm,
           u8 master)
{
 assert_spin_locked(&dlm->spinlock);
 mlog(0, "%s: changing new_master from %u to %u\n",
      dlm->name, dlm->reco.new_master, master);
 dlm->reco.new_master = master;
}
