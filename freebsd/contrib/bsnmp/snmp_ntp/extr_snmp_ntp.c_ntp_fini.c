
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fd_deselect (int ) ;
 int ntpd_fd ;
 int or_unregister (int ) ;
 int reg_index ;

__attribute__((used)) static int
ntp_fini(void)
{

 or_unregister(reg_index);
 fd_deselect(ntpd_fd);

 return (0);
}
