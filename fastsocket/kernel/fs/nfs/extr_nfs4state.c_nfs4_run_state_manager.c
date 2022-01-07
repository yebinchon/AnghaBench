
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int dummy; } ;


 int SIGKILL ;
 int allow_signal (int ) ;
 int module_put_and_exit (int ) ;
 int nfs4_state_manager (struct nfs_client*) ;
 int nfs_put_client (struct nfs_client*) ;

__attribute__((used)) static int nfs4_run_state_manager(void *ptr)
{
 struct nfs_client *clp = ptr;

 allow_signal(SIGKILL);
 nfs4_state_manager(clp);
 nfs_put_client(clp);
 module_put_and_exit(0);
 return 0;
}
