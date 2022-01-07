
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {scalar_t__ l_blocking; int l_level; int l_requested; int l_action; int l_name; int l_lock; } ;


 int BUG () ;
 int BUG_ON (int) ;
 scalar_t__ DLM_LOCK_NL ;
 int ML_ERROR ;
 int OCFS2_AST_DOWNCONVERT ;
 int OCFS2_LOCK_BUSY ;
 int assert_spin_locked (int *) ;
 int lockres_or_flags (struct ocfs2_lock_res*,int ) ;
 unsigned int lockres_set_pending (struct ocfs2_lock_res*) ;
 int mlog (int ,char*,int,int,...) ;

__attribute__((used)) static unsigned int ocfs2_prepare_downconvert(struct ocfs2_lock_res *lockres,
           int new_level)
{
 assert_spin_locked(&lockres->l_lock);

 BUG_ON(lockres->l_blocking <= DLM_LOCK_NL);

 if (lockres->l_level <= new_level) {
  mlog(ML_ERROR, "lockres->l_level (%d) <= new_level (%d)\n",
       lockres->l_level, new_level);
  BUG();
 }

 mlog(0, "lock %s, new_level = %d, l_blocking = %d\n",
      lockres->l_name, new_level, lockres->l_blocking);

 lockres->l_action = OCFS2_AST_DOWNCONVERT;
 lockres->l_requested = new_level;
 lockres_or_flags(lockres, OCFS2_LOCK_BUSY);
 return lockres_set_pending(lockres);
}
