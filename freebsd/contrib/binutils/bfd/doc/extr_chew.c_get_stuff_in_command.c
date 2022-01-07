
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ at (int ,int ) ;
 int check_range () ;
 int copy_past_newline (int ,int ,int ) ;
 int idx ;
 int init_string (int ) ;
 scalar_t__ iscommand (int ,int ) ;
 int pc ;
 int ptr ;
 int tos ;

__attribute__((used)) static void
get_stuff_in_command ()
{
  tos++;
  check_range ();
  init_string (tos);

  while (at (ptr, idx))
    {
      if (iscommand (ptr, idx))
 break;
      idx = copy_past_newline (ptr, idx, tos);
    }
  pc++;
}
