
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stability ;
struct TYPE_3__ {int dtat_name; int dtat_data; int dtat_class; } ;
typedef TYPE_1__ dtrace_attribute_t ;
typedef int class ;


 int snprintf (char*,size_t,char*,char const,char const,char const) ;

char *
dt_attr_str(dtrace_attribute_t a, char *buf, size_t len)
{
 static const char stability[] = "ipoxuesS";
 static const char class[] = "uCpgIc";

 if (a.dtat_name < sizeof (stability) &&
     a.dtat_data < sizeof (stability) && a.dtat_class < sizeof (class)) {
  (void) snprintf(buf, len, "[%c/%c/%c]", stability[a.dtat_name],
      stability[a.dtat_data], class[a.dtat_class]);
 } else {
  (void) snprintf(buf, len, "[%u/%u/%u]",
      a.dtat_name, a.dtat_data, a.dtat_class);
 }

 return (buf);
}
