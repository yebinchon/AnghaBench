
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __nfs4_state_start () ;
 int nfsd4_load_reboot_recovery_data () ;

int
nfs4_state_start(void)
{
 nfsd4_load_reboot_recovery_data();
 return __nfs4_state_start();
}
