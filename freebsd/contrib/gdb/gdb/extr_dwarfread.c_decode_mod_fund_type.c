
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int AT_fund_type ;
 int AT_mod_fund_type ;
 int GET_UNSIGNED ;
 unsigned short attribute_size (int ) ;
 int current_objfile ;
 struct type* decode_modified_type (char*,unsigned short,int ) ;
 unsigned short target_to_host (char*,int,int ,int ) ;

__attribute__((used)) static struct type *
decode_mod_fund_type (char *typedata)
{
  struct type *typep = ((void*)0);
  unsigned short modcount;
  int nbytes;



  nbytes = attribute_size (AT_mod_fund_type);
  modcount = target_to_host (typedata, nbytes, GET_UNSIGNED, current_objfile);
  typedata += nbytes;



  modcount -= attribute_size (AT_fund_type);



  typep = decode_modified_type (typedata, modcount, AT_mod_fund_type);
  return (typep);
}
