
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_BASE_DESTRUCTOR_P (int const) ;
 scalar_t__ DECL_COMPLETE_DESTRUCTOR_P (int const) ;
 scalar_t__ DECL_DELETING_DESTRUCTOR_P (int const) ;
 scalar_t__ DECL_MAYBE_IN_CHARGE_DESTRUCTOR_P (int const) ;
 int gcc_assert (int) ;
 int write_string (char*) ;

__attribute__((used)) static void
write_special_name_destructor (const tree dtor)
{
  if (DECL_DELETING_DESTRUCTOR_P (dtor))
    write_string ("D0");
  else if (DECL_BASE_DESTRUCTOR_P (dtor))
    write_string ("D2");
  else
    {
      gcc_assert (DECL_COMPLETE_DESTRUCTOR_P (dtor)




    || DECL_MAYBE_IN_CHARGE_DESTRUCTOR_P (dtor));
      write_string ("D1");
    }
}
