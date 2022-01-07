
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_kod_request (char*,int) ;
 int stub1 (char*,int) ;

__attribute__((used)) static void
info_kod_command (char *arg, int from_tty)
{
  (*gdb_kod_request) (arg, from_tty);
}
