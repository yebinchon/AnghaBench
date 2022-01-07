
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct dieinfo {int at_byte_size; int die_ref; scalar_t__ has_at_byte_size; } ;


 int DIE_ID ;
 int DIE_NAME ;
 int FT_INTEGER ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_UNDEF ;
 struct type* alloc_utype (int ,struct type*) ;
 struct type* create_range_type (struct type*,struct type*,unsigned long,unsigned long) ;
 struct type* create_string_type (struct type*,struct type*) ;
 int current_objfile ;
 int dup_user_type_definition_complaint (int ,int ) ;
 struct type* dwarf_fundamental_type (int ,int ) ;
 struct type* lookup_utype (int ) ;

__attribute__((used)) static void
read_tag_string_type (struct dieinfo *dip)
{
  struct type *utype;
  struct type *indextype;
  struct type *rangetype;
  unsigned long lowbound = 0;
  unsigned long highbound;

  if (dip->has_at_byte_size)
    {

      highbound = dip->at_byte_size - 1;
    }
  else
    {

      highbound = 1;
    }
  indextype = dwarf_fundamental_type (current_objfile, FT_INTEGER);
  rangetype = create_range_type ((struct type *) ((void*)0), indextype, lowbound,
     highbound);

  utype = lookup_utype (dip->die_ref);
  if (utype == ((void*)0))
    {

      utype = alloc_utype (dip->die_ref, (struct type *) ((void*)0));
    }
  else
    {


      if (TYPE_CODE (utype) != TYPE_CODE_UNDEF)
 {
   dup_user_type_definition_complaint (DIE_ID, DIE_NAME);
   return;
 }
    }


  utype = create_string_type (utype, rangetype);
}
