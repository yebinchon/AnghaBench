
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ type_wider_than (struct type*,struct type*) ;

__attribute__((used)) static struct type *
max_type (struct type *type1, struct type *type2)
{
  return type_wider_than (type1, type2) ? type1 : type2;
}
