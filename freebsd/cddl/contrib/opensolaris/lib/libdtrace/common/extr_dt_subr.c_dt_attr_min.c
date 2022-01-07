
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* dtat_class; void* dtat_data; void* dtat_name; } ;
typedef TYPE_1__ dtrace_attribute_t ;


 void* MIN (void*,void*) ;

dtrace_attribute_t
dt_attr_min(dtrace_attribute_t a1, dtrace_attribute_t a2)
{
 dtrace_attribute_t am;

 am.dtat_name = MIN(a1.dtat_name, a2.dtat_name);
 am.dtat_data = MIN(a1.dtat_data, a2.dtat_data);
 am.dtat_class = MIN(a1.dtat_class, a2.dtat_class);

 return (am);
}
