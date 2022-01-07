
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 char* PROC_NAME_FMT ;
 int add_target (int *) ;
 int child_ops ;
 int close (int) ;
 int getpid () ;
 int init_child_ops () ;
 int open (char*,int ) ;
 int sprintf (char*,char*,int ) ;

void
_initialize_inftarg (void)
{
  init_child_ops ();
  add_target (&child_ops);
}
