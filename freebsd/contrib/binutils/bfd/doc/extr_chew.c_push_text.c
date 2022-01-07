
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cattext (int ,char*) ;
 int check_range () ;
 int init_string (int ) ;
 scalar_t__ pc ;
 int tos ;

__attribute__((used)) static void
push_text ()
{
  tos++;
  check_range ();
  init_string (tos);
  pc++;
  cattext (tos, *((char **) pc));
  pc++;
}
