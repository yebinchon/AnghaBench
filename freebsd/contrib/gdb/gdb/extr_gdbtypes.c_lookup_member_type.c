
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_OBJFILE (struct type*) ;
 struct type* alloc_type (int ) ;
 int smash_to_member_type (struct type*,struct type*,struct type*) ;

struct type *
lookup_member_type (struct type *type, struct type *domain)
{
  struct type *mtype;

  mtype = alloc_type (TYPE_OBJFILE (type));
  smash_to_member_type (mtype, domain, type);
  return (mtype);
}
