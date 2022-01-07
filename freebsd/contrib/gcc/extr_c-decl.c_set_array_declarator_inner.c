
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_declarator {struct c_declarator* declarator; } ;



struct c_declarator *
set_array_declarator_inner (struct c_declarator *decl,
       struct c_declarator *inner,
       bool abstract_p __attribute__ ((__unused__)))
{
  decl->declarator = inner;
  return decl;
}
