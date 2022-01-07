
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {unsigned long l_flags; } ;


 int lockres_set_flags (struct ocfs2_lock_res*,unsigned long) ;

__attribute__((used)) static void lockres_clear_flags(struct ocfs2_lock_res *lockres,
    unsigned long clear)
{
 lockres_set_flags(lockres, lockres->l_flags & ~clear);
}
