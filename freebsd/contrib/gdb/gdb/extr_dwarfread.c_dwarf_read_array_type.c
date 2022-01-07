
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct dieinfo {scalar_t__ at_ordering; char* at_subscr_data; int die_ref; } ;


 int AT_subscr_data ;
 int DIE_ID ;
 int DIE_NAME ;
 int GET_UNSIGNED ;
 scalar_t__ ORD_row_major ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_UNDEF ;
 int alloc_utype (int ,struct type*) ;
 int attribute_size (int ) ;
 int complaint (int *,char*,int ,int ) ;
 int current_objfile ;
 struct type* decode_subscript_data_item (char*,char*) ;
 int dup_user_type_definition_complaint (int ,int ) ;
 struct type* lookup_utype (int ) ;
 int symfile_complaints ;
 unsigned short target_to_host (char*,int,int ,int ) ;

__attribute__((used)) static void
dwarf_read_array_type (struct dieinfo *dip)
{
  struct type *type;
  struct type *utype;
  char *sub;
  char *subend;
  unsigned short blocksz;
  int nbytes;

  if (dip->at_ordering != ORD_row_major)
    {

      complaint (&symfile_complaints,
   "DIE @ 0x%x \"%s\", array not row major; not handled correctly",
   DIE_ID, DIE_NAME);
    }
  sub = dip->at_subscr_data;
  if (sub != ((void*)0))
    {
      nbytes = attribute_size (AT_subscr_data);
      blocksz = target_to_host (sub, nbytes, GET_UNSIGNED, current_objfile);
      subend = sub + nbytes + blocksz;
      sub += nbytes;
      type = decode_subscript_data_item (sub, subend);
      utype = lookup_utype (dip->die_ref);
      if (utype == ((void*)0))
 {

   alloc_utype (dip->die_ref, type);
 }
      else if (TYPE_CODE (utype) == TYPE_CODE_UNDEF)
 {
   *utype = *type;
 }
      else
 {


   dup_user_type_definition_complaint (DIE_ID, DIE_NAME);
 }
    }
}
