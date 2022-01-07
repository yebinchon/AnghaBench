
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcoll (char const* const,char const* const) ;

__attribute__((used)) static int
var_compare(const void *a, const void *b)
{
 const char *const *sa, *const *sb;

 sa = a;
 sb = b;





 return strcoll(*sa, *sb);
}
