
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_BASE_CONSTRUCTOR_P (int const) ;
 scalar_t__ DECL_COMPLETE_CONSTRUCTOR_P (int const) ;
 scalar_t__ DECL_MAYBE_IN_CHARGE_CONSTRUCTOR_P (int const) ;
 int gcc_assert (int) ;
 int write_string (char*) ;

__attribute__((used)) static void
write_special_name_constructor (const tree ctor)
{
  if (DECL_BASE_CONSTRUCTOR_P (ctor))
    write_string ("C2");
  else
    {
      gcc_assert (DECL_COMPLETE_CONSTRUCTOR_P (ctor)




    || DECL_MAYBE_IN_CHARGE_CONSTRUCTOR_P (ctor));
      write_string ("C1");
    }
}
