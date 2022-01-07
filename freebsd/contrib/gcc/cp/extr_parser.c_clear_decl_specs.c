
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cp_decl_specifier_seq ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void
clear_decl_specs (cp_decl_specifier_seq *decl_specs)
{
  memset (decl_specs, 0, sizeof (cp_decl_specifier_seq));
}
