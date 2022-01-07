
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int apr_isdigit (char const) ;

__attribute__((used)) static int
compare_right(char const *a, char const *b)
{
     int bias = 0;





     for (;; a++, b++) {
   if (!apr_isdigit(*a) && !apr_isdigit(*b))
        break;
   else if (!apr_isdigit(*a))
        return -1;
   else if (!apr_isdigit(*b))
        return +1;
   else if (*a < *b) {
        if (!bias)
      bias = -1;
   } else if (*a > *b) {
        if (!bias)
      bias = +1;
   } else if (!*a && !*b)
        break;
     }

     return bias;
}
