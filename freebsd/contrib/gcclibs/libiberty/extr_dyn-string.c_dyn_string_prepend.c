
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dyn_string_t ;


 int dyn_string_insert (int ,int ,int ) ;

int
dyn_string_prepend (dyn_string_t dest, dyn_string_t src)
{
  return dyn_string_insert (dest, 0, src);
}
