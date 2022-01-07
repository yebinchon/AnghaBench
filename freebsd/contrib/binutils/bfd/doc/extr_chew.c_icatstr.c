
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int catstr (scalar_t__,scalar_t__) ;
 int check_range () ;
 int delete_string (scalar_t__) ;
 int pc ;
 scalar_t__ tos ;

__attribute__((used)) static void
icatstr ()
{
  tos--;
  check_range ();
  catstr (tos, tos + 1);
  delete_string (tos + 1);
  pc++;
}
