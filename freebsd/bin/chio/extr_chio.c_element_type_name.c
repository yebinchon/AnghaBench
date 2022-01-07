
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* et_name; int et_type; } ;


 TYPE_1__* elements ;

__attribute__((used)) static const char *
element_type_name(int et)
{
 int i;

 for (i = 0; elements[i].et_name != ((void*)0); i++)
  if (elements[i].et_type == et)
   return elements[i].et_name;

 return "unknown";
}
