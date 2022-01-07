
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enter_cap_mode (int,char**) ;
 int exit (int) ;
 int get_opt (int*,char***) ;
 int global_dest () ;
 int global_init () ;
 int read_files (int,char**) ;

int
main(int argc, char **argv)
{
 int rtn;

 global_init();
 get_opt(&argc, &argv);
 enter_cap_mode(argc, argv);
 rtn = read_files(argc, argv);
 global_dest();

 exit(rtn);
}
