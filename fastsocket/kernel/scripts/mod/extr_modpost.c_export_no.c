
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum export { ____Placeholder_export } export ;
struct TYPE_2__ {int export; int str; } ;


 TYPE_1__* export_list ;
 int export_unknown ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static enum export export_no(const char *s)
{
 int i;

 if (!s)
  return export_unknown;
 for (i = 0; export_list[i].export != export_unknown; i++) {
  if (strcmp(export_list[i].str, s) == 0)
   return export_list[i].export;
 }
 return export_unknown;
}
