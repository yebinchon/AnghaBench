
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 struct type* make_reference_type (struct type*,struct type**) ;

struct type *
lookup_reference_type (struct type *type)
{
  return make_reference_type (type, (struct type **) 0);
}
