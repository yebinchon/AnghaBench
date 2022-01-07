
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const* const,char const* const) ;

__attribute__((used)) static int
def_name_eq_p (const void *def1, const void *def2)
{
  return ! strcmp (*(const char *const *) def1,
     *(const char *const *) def2);
}
