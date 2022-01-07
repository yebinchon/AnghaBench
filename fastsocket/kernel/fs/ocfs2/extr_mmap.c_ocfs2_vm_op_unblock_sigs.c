
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_SETMASK ;
 int sigprocmask (int ,int *,int *) ;

__attribute__((used)) static inline int ocfs2_vm_op_unblock_sigs(sigset_t *oldset)
{
 return sigprocmask(SIG_SETMASK, oldset, ((void*)0));
}
