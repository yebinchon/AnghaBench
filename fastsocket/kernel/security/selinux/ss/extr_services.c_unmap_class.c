
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {size_t value; } ;


 TYPE_1__* current_mapping ;
 size_t current_mapping_size ;

__attribute__((used)) static u16 unmap_class(u16 tclass)
{
 if (tclass < current_mapping_size)
  return current_mapping[tclass].value;

 return tclass;
}
