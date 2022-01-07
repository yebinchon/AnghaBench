
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int catstr (scalar_t__,scalar_t__) ;
 int check_range () ;
 int delete_string (scalar_t__) ;
 scalar_t__ internal_mode ;
 scalar_t__ internal_wanted ;
 int pc ;
 scalar_t__ tos ;

__attribute__((used)) static void
maybecatstr ()
{
  if (internal_wanted == internal_mode)
    {
      catstr (tos - 1, tos);
    }
  delete_string (tos);
  tos--;
  check_range ();
  pc++;
}
