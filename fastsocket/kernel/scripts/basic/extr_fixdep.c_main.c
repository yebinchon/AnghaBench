
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cmdline ;
 char* depfile ;
 int print_cmdline () ;
 int print_deps () ;
 char* target ;
 int traps () ;
 int usage () ;

int main(int argc, char *argv[])
{
 traps();

 if (argc != 4)
  usage();

 depfile = argv[1];
 target = argv[2];
 cmdline = argv[3];

 print_cmdline();
 print_deps();

 return 0;
}
