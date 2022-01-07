
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlog (char*,char*,char*) ;
 int is_network_member (char*) ;

__attribute__((used)) static int
f_in_network(char *arg)
{
  int status;

  if (!arg)
    return 0;

  status = is_network_member(arg);
  dlog("%s is %son a local network", arg, (status ? "" : "not "));
  return status;
}
