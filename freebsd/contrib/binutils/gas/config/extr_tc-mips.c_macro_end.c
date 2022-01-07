
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int relax_substateT ;
struct TYPE_6__ {int* sizes; TYPE_1__* first_frag; scalar_t__ delay_slot_p; } ;
struct TYPE_5__ {scalar_t__ warn_about_macros; } ;
struct TYPE_4__ {int fr_subtype; } ;


 int RELAX_DELAY_SLOT ;
 int RELAX_NOMACRO ;
 int RELAX_SECOND_LONGER ;
 int as_warn (char*,char const*) ;
 char* macro_warning (int ) ;
 TYPE_3__ mips_macro_warning ;
 TYPE_2__ mips_opts ;

__attribute__((used)) static void
macro_end (void)
{
  if (mips_macro_warning.sizes[0] > 4 || mips_macro_warning.sizes[1] > 4)
    {
      relax_substateT subtype;


      subtype = 0;
      if (mips_macro_warning.sizes[1] > mips_macro_warning.sizes[0])
 subtype |= RELAX_SECOND_LONGER;
      if (mips_opts.warn_about_macros)
 subtype |= RELAX_NOMACRO;
      if (mips_macro_warning.delay_slot_p)
 subtype |= RELAX_DELAY_SLOT;

      if (mips_macro_warning.sizes[0] > 4 && mips_macro_warning.sizes[1] > 4)
 {



   const char *msg = macro_warning (subtype);
   if (msg != 0)
     as_warn ("%s", msg);
 }
      else
 {


   mips_macro_warning.first_frag->fr_subtype |= subtype;
 }
    }
}
