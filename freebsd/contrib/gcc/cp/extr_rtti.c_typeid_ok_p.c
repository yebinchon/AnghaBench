
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMPLETE_TYPE_P (int ) ;
 int const_type_info_type_node ;
 int error (char*) ;
 int flag_rtti ;

__attribute__((used)) static bool
typeid_ok_p (void)
{
  if (! flag_rtti)
    {
      error ("cannot use typeid with -fno-rtti");
      return 0;
    }

  if (!COMPLETE_TYPE_P (const_type_info_type_node))
    {
      error ("must #include <typeinfo> before using typeid");
      return 0;
    }

  return 1;
}
