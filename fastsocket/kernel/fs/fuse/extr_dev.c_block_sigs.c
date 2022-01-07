
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIGKILL ;
 int SIG_BLOCK ;
 int siginitsetinv (int *,int ) ;
 int sigmask (int ) ;
 int sigprocmask (int ,int *,int *) ;

__attribute__((used)) static void block_sigs(sigset_t *oldset)
{
 sigset_t mask;

 siginitsetinv(&mask, sigmask(SIGKILL));
 sigprocmask(SIG_BLOCK, &mask, oldset);
}
