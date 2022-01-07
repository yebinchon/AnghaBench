
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; } ;
typedef TYPE_1__ HistEvent ;


 int H_FIRST ;
 int H_LAST ;
 int H_NEXT ;
 int H_NEXT_EVENT ;
 int H_PREV_STR ;
 int atoi (char const*) ;
 int error (char*,char const*) ;
 int hist ;
 int history (int ,TYPE_1__*,int ,...) ;
 scalar_t__ is_number (char const*) ;

__attribute__((used)) static int
str_to_event(const char *str, int last)
{
 HistEvent he;
 const char *s = str;
 int relative = 0;
 int i, retval;

 retval = history(hist, &he, H_FIRST);
 switch (*s) {
 case '-':
  relative = 1;

 case '+':
  s++;
 }
 if (is_number(s)) {
  i = atoi(s);
  if (relative) {
   while (retval != -1 && i--) {
    retval = history(hist, &he, H_NEXT);
   }
   if (retval == -1)
    retval = history(hist, &he, H_LAST);
  } else {
   retval = history(hist, &he, H_NEXT_EVENT, i);
   if (retval == -1) {




    retval = history(hist, &he, last ? H_FIRST : H_LAST);
   }
  }
  if (retval == -1)
   error("history number %s not found (internal error)",
          str);
 } else {



  retval = history(hist, &he, H_PREV_STR, str);
  if (retval == -1)
   error("history pattern not found: %s", str);
 }
 return (he.num);
}
