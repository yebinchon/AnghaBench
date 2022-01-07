
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MACH_PORT_TYPE_RECEIVE ;
 int info_port_rights (char*,int ) ;

__attribute__((used)) static void
info_recv_rights_cmd (char *args, int from_tty)
{
  info_port_rights (args, MACH_PORT_TYPE_RECEIVE);
}
