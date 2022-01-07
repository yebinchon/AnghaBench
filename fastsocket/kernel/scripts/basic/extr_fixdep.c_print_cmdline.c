
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cmdline ;
 int printf (char*,char*,char*) ;
 char* target ;

__attribute__((used)) static void print_cmdline(void)
{
 printf("cmd_%s := %s\n\n", target, cmdline);
}
