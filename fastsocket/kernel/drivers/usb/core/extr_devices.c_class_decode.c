
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int class; char const* class_name; } ;


 TYPE_1__* clas_info ;

__attribute__((used)) static const char *class_decode(const int class)
{
 int ix;

 for (ix = 0; clas_info[ix].class != -1; ix++)
  if (clas_info[ix].class == class)
   break;
 return clas_info[ix].class_name;
}
