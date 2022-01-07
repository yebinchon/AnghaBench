
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef int DIE_REF ;


 int DIE_ID ;
 int DIE_NAME ;
 int FT_INTEGER ;
 struct type* alloc_type (int ) ;
 int bad_die_ref_complaint (int ,int ,int) ;
 int complaint (int *,char*,int ,int ) ;
 int current_objfile ;
 int dbroff ;
 struct type* dwarf_fundamental_type (int ,int ) ;
 int numutypes ;
 int symfile_complaints ;
 struct type** utypes ;

__attribute__((used)) static struct type *
alloc_utype (DIE_REF die_ref, struct type *utypep)
{
  struct type **typep;
  int utypeidx;

  utypeidx = (die_ref - dbroff) / 4;
  typep = utypes + utypeidx;
  if ((utypeidx < 0) || (utypeidx >= numutypes))
    {
      utypep = dwarf_fundamental_type (current_objfile, FT_INTEGER);
      bad_die_ref_complaint (DIE_ID, DIE_NAME, die_ref);
    }
  else if (*typep != ((void*)0))
    {
      utypep = *typep;
      complaint (&symfile_complaints,
   "DIE @ 0x%x \"%s\", internal error: duplicate user type allocation",
   DIE_ID, DIE_NAME);
    }
  else
    {
      if (utypep == ((void*)0))
 {
   utypep = alloc_type (current_objfile);
 }
      *typep = utypep;
    }
  return (utypep);
}
