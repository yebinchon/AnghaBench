
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dyn_string_t ;


 int dyn_string_insert_cstr (int ,int ,char const*) ;

int
dyn_string_prepend_cstr (dyn_string_t dest, const char *src)
{
  return dyn_string_insert_cstr (dest, 0, src);
}
