
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_sysctl_paths (int ,int ) ;
 int sctp_path ;
 int sctp_sysctl_header ;
 int sctp_table ;

void sctp_sysctl_register(void)
{
 sctp_sysctl_header = register_sysctl_paths(sctp_path, sctp_table);
}
