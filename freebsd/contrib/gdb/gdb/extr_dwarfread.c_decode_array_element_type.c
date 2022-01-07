
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef void* DIE_REF ;






 int DIE_ID ;
 int DIE_NAME ;
 int FT_INTEGER ;
 int GET_UNSIGNED ;
 int SIZEOF_ATTRIBUTE ;
 struct type* alloc_utype (void*,int *) ;
 int attribute_size (unsigned short) ;
 int bad_array_element_type_complaint (int ,int ,unsigned short) ;
 int current_objfile ;
 struct type* decode_fund_type (unsigned short) ;
 struct type* decode_mod_fund_type (char*) ;
 struct type* decode_mod_u_d_type (char*) ;
 struct type* dwarf_fundamental_type (int ,int ) ;
 struct type* lookup_utype (void*) ;
 void* target_to_host (char*,int,int ,int ) ;

__attribute__((used)) static struct type *
decode_array_element_type (char *scan)
{
  struct type *typep;
  DIE_REF die_ref;
  unsigned short attribute;
  unsigned short fundtype;
  int nbytes;

  attribute = target_to_host (scan, SIZEOF_ATTRIBUTE, GET_UNSIGNED,
         current_objfile);
  scan += SIZEOF_ATTRIBUTE;
  nbytes = attribute_size (attribute);
  if (nbytes == -1)
    {
      bad_array_element_type_complaint (DIE_ID, DIE_NAME, attribute);
      typep = dwarf_fundamental_type (current_objfile, FT_INTEGER);
    }
  else
    {
      switch (attribute)
 {
 case 131:
   fundtype = target_to_host (scan, nbytes, GET_UNSIGNED,
         current_objfile);
   typep = decode_fund_type (fundtype);
   break;
 case 130:
   typep = decode_mod_fund_type (scan);
   break;
 case 128:
   die_ref = target_to_host (scan, nbytes, GET_UNSIGNED,
        current_objfile);
   typep = lookup_utype (die_ref);
   if (typep == ((void*)0))
     {
       typep = alloc_utype (die_ref, ((void*)0));
     }
   break;
 case 129:
   typep = decode_mod_u_d_type (scan);
   break;
 default:
   bad_array_element_type_complaint (DIE_ID, DIE_NAME, attribute);
   typep = dwarf_fundamental_type (current_objfile, FT_INTEGER);
   break;
 }
    }
  return (typep);
}
