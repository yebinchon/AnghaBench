
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_BLOCK ;
 int sigfillset (int *) ;
 int sigprocmask (int ,int *,int *) ;

__attribute__((used)) static inline int ocfs2_vm_op_block_sigs(sigset_t *blocked, sigset_t *oldset)
{



 sigfillset(blocked);



 return sigprocmask(SIG_BLOCK, blocked, oldset);
}
