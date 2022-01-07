
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strstr (char const*,char*) ;

__attribute__((used)) static int
integer_types_same_name_p (const char *first, const char *second)
{
  int first_p, second_p;


  first_p = (strstr (first, "short") != ((void*)0));
  second_p = (strstr (second, "short") != ((void*)0));
  if (first_p && second_p)
    return 1;
  if (first_p || second_p)
    return 0;


  first_p = (strstr (first, "long") != ((void*)0));
  second_p = (strstr (second, "long") != ((void*)0));
  if (first_p && second_p)
    return 1;
  if (first_p || second_p)
    return 0;


  first_p = (strstr (first, "char") != ((void*)0));
  second_p = (strstr (second, "char") != ((void*)0));
  if (first_p && second_p)
    return 1;
  if (first_p || second_p)
    return 0;


  return 1;
}
