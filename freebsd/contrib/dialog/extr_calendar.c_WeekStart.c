
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* week_start; } ;


 int MAX_DAYS ;
 int _NL_TIME_FIRST_WEEKDAY ;
 int _NL_TIME_WEEK_1STDAY ;
 TYPE_1__ dialog_vars ;
 int nameOfDayOfWeek (int) ;
 int* nl_langinfo (int ) ;
 int read_locale_setting (char*,int ) ;
 int strcmp (char*,char*) ;
 size_t strlen (char*) ;
 int strncmp (int ,char*,size_t) ;
 long strtol (char*,char**,int ) ;

__attribute__((used)) static int
WeekStart(void)
{
    int result = 0;
    char *option = dialog_vars.week_start;
    if (option != 0) {
 if (option[0]) {
     char *next = 0;
     long check = strtol(option, &next, 0);
     if (next == 0 ||
  next == option ||
  *next != '\0') {
  if (!strcmp(option, "locale")) {
      result = 0;

  } else {
      int day;
      size_t eql = strlen(option);
      for (day = 0; day < MAX_DAYS; ++day) {
   if (!strncmp(nameOfDayOfWeek(day), option, eql)) {
       result = day;
       break;
   }
      }
  }
     } else if (check < 0) {
  result = -1;
     } else {
  result = (int) (check % MAX_DAYS);
     }
 }
    }
    return result;
}
