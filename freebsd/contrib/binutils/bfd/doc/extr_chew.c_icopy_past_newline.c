
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_range () ;
 int copy_past_newline (int ,int ,int ) ;
 int idx ;
 int init_string (int ) ;
 int pc ;
 int ptr ;
 int tos ;

__attribute__((used)) static void
icopy_past_newline ()
{
  tos++;
  check_range ();
  init_string (tos);
  idx = copy_past_newline (ptr, idx, tos);
  pc++;
}
