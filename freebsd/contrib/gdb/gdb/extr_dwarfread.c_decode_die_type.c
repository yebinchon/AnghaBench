
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct dieinfo {scalar_t__ at_fund_type; scalar_t__ at_mod_u_d_type; scalar_t__ at_user_def_type; int * at_mod_fund_type; } ;


 int FT_VOID ;
 struct type* alloc_utype (scalar_t__,int *) ;
 int current_objfile ;
 struct type* decode_fund_type (scalar_t__) ;
 struct type* decode_mod_fund_type (int *) ;
 struct type* decode_mod_u_d_type (scalar_t__) ;
 struct type* dwarf_fundamental_type (int ,int ) ;
 struct type* lookup_utype (scalar_t__) ;

__attribute__((used)) static struct type *
decode_die_type (struct dieinfo *dip)
{
  struct type *type = ((void*)0);

  if (dip->at_fund_type != 0)
    {
      type = decode_fund_type (dip->at_fund_type);
    }
  else if (dip->at_mod_fund_type != ((void*)0))
    {
      type = decode_mod_fund_type (dip->at_mod_fund_type);
    }
  else if (dip->at_user_def_type)
    {
      type = lookup_utype (dip->at_user_def_type);
      if (type == ((void*)0))
 {
   type = alloc_utype (dip->at_user_def_type, ((void*)0));
 }
    }
  else if (dip->at_mod_u_d_type)
    {
      type = decode_mod_u_d_type (dip->at_mod_u_d_type);
    }
  else
    {
      type = dwarf_fundamental_type (current_objfile, FT_VOID);
    }
  return (type);
}
