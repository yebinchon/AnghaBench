
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {int dummy; } ;


 struct inf* current_inferior ;
 struct inf* make_inf () ;

__attribute__((used)) static struct inf *
cur_inf (void)
{
  if (!current_inferior)
    current_inferior = make_inf ();
  return current_inferior;
}
