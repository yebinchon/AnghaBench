
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unichar ;


 int * unichar_dup (int *) ;

__attribute__((used)) static unichar *
get_diff (unichar *end, unichar *start)
{
  unichar *ret;
  unichar save = *end;

  *end = 0;
  ret = unichar_dup (start);
  *end = save;
  return ret;
}
