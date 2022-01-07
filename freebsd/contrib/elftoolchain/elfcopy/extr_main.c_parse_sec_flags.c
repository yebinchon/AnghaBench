
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sec_action {int flags; } ;
struct TYPE_2__ {int value; int * name; } ;


 int EXIT_FAILURE ;
 int errx (int ,char*,char const*) ;
 TYPE_1__* sec_flags ;
 scalar_t__ strcasecmp (int *,char const*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static void
parse_sec_flags(struct sec_action *sac, char *s)
{
 const char *flag;
 int found, i;

 for (flag = strtok(s, ","); flag; flag = strtok(((void*)0), ",")) {
  found = 0;
  for (i = 0; sec_flags[i].name != ((void*)0); i++)
   if (strcasecmp(sec_flags[i].name, flag) == 0) {
    sac->flags |= sec_flags[i].value;
    found = 1;
    break;
   }
  if (!found)
   errx(EXIT_FAILURE, "unrecognized section flag %s",
       flag);
 }
}
