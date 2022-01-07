
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nfs4_lock_state () ;
 int nfs4_unlock_state () ;
 int nfsd4_init_recdir (int ) ;
 int nfsd4_recdir_load () ;
 int printk (char*) ;
 int user_recovery_dirname ;

__attribute__((used)) static void
nfsd4_load_reboot_recovery_data(void)
{
 int status;

 nfs4_lock_state();
 nfsd4_init_recdir(user_recovery_dirname);
 status = nfsd4_recdir_load();
 nfs4_unlock_state();
 if (status)
  printk("NFSD: Failure reading reboot recovery data\n");
}
