
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int etree_type ;


 int exp_assop (char,char const*,int *) ;
 int lang_add_assignment (int ) ;

void
mri_public (const char *name, etree_type *exp)
{
  lang_add_assignment (exp_assop ('=', name, exp));
}
