
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ apr_isdigit (char) ;
 scalar_t__ apr_isspace (char) ;
 char apr_toupper (char) ;
 int compare_left (char const*,char const*) ;
 int compare_right (char const*,char const*) ;

__attribute__((used)) static int strnatcmp0(char const *a, char const *b, int fold_case)
{
     int ai, bi;
     char ca, cb;
     int fractional, result;
     ai = bi = 0;
     while (1) {
   ca = a[ai]; cb = b[bi];


   while (apr_isspace(ca))
        ca = a[++ai];

   while (apr_isspace(cb))
        cb = b[++bi];


   if (apr_isdigit(ca) && apr_isdigit(cb)) {
        fractional = (ca == '0' || cb == '0');

        if (fractional) {
      if ((result = compare_left(a+ai, b+bi)) != 0)
    return result;
        } else {
      if ((result = compare_right(a+ai, b+bi)) != 0)
    return result;
        }
   }

   if (!ca && !cb) {


        return 0;
   }

   if (fold_case) {
        ca = apr_toupper(ca);
        cb = apr_toupper(cb);
   }

   if (ca < cb)
        return -1;
   else if (ca > cb)
        return +1;

   ++ai; ++bi;
     }
}
