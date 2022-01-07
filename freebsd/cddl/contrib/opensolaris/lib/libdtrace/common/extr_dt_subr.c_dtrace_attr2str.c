
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dtat_class; int dtat_data; int dtat_name; } ;
typedef TYPE_1__ dtrace_attribute_t ;


 char* dtrace_class_name (int ) ;
 char* dtrace_stability_name (int ) ;
 int snprintf (char*,size_t,char*,char const*,char const*,char const*) ;

char *
dtrace_attr2str(dtrace_attribute_t attr, char *buf, size_t len)
{
 const char *name = dtrace_stability_name(attr.dtat_name);
 const char *data = dtrace_stability_name(attr.dtat_data);
 const char *class = dtrace_class_name(attr.dtat_class);

 if (name == ((void*)0) || data == ((void*)0) || class == ((void*)0))
  return (((void*)0));

 (void) snprintf(buf, len, "%s/%s/%s", name, data, class);
 return (buf);
}
