
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zi_start; scalar_t__ zi_end; int zi_level; int zi_object; int zi_objset; } ;
typedef TYPE_1__ zinject_record_t ;
typedef int u_longlong_t ;


 int fprintf (int ,char*,char const*) ;
 int sscanf (char const*,char*,int *,int *,int *,int *) ;
 int stderr ;

int
translate_raw(const char *str, zinject_record_t *record)
{




 if (sscanf(str, "%llx:%llx:%x:%llx", (u_longlong_t *)&record->zi_objset,
     (u_longlong_t *)&record->zi_object, &record->zi_level,
     (u_longlong_t *)&record->zi_start) != 4) {
  (void) fprintf(stderr, "bad raw spec '%s': must be of the form "
      "'objset:object:level:blkid'\n", str);
  return (-1);
 }

 record->zi_end = record->zi_start;

 return (0);
}
