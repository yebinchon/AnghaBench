
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int * fd_select (int ,int ,int *,int ) ;
 int module ;
 int * ntpd_fd ;
 int ntpd_input ;
 int ntpd_sock ;
 int oid_ntpMIB ;
 int open_socket () ;
 int or_register (int *,char*,int ) ;
 int reg_index ;
 int syslog (int ,char*) ;

__attribute__((used)) static void
ntp_start(void)
{

 if (open_socket() != -1) {
  ntpd_fd = fd_select(ntpd_sock, ntpd_input, ((void*)0), module);
  if (ntpd_fd == ((void*)0)) {
   syslog(LOG_ERR, "fd_select failed on ntpd socket: %m");
   return;
  }
 }
 reg_index = or_register(&oid_ntpMIB, "The MIB for NTP.", module);
}
