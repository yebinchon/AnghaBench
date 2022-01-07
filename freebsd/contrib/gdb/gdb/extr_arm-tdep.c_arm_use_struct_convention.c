
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;


 int CHECK_TYPEDEF (struct type*) ;
 scalar_t__ DEPRECATED_REGISTER_SIZE ;
 int TYPE_CODE (struct type*) ;
 int TYPE_CODE_FLT ;
 int TYPE_CODE_STRUCT ;
 int TYPE_CODE_UNION ;
 scalar_t__ TYPE_FIELD_BITPOS (struct type*,int) ;
 scalar_t__ TYPE_FIELD_BITSIZE (struct type*,int) ;
 int TYPE_FIELD_TYPE (struct type*,int) ;
 scalar_t__ TYPE_LENGTH (struct type*) ;
 int TYPE_NFIELDS (struct type*) ;
 struct type* check_typedef (int ) ;

__attribute__((used)) static int
arm_use_struct_convention (int gcc_p, struct type *type)
{
  int nRc;
  enum type_code code;

  CHECK_TYPEDEF (type);
  if (TYPE_LENGTH (type) > DEPRECATED_REGISTER_SIZE)
    {
      return 1;
    }



  code = TYPE_CODE (type);
  if ((TYPE_CODE_STRUCT != code) && (TYPE_CODE_UNION != code))
    {
      return 1;
    }



  nRc = 0;

  if ((TYPE_CODE_STRUCT == code) || (TYPE_CODE_UNION == code))
    {
      int i;
      for (i = 0; i < TYPE_NFIELDS (type); i++)
 {
   enum type_code field_type_code;
   field_type_code = TYPE_CODE (check_typedef (TYPE_FIELD_TYPE (type, i)));


   if (field_type_code == TYPE_CODE_FLT)
     {
       nRc = 1;
       break;
     }


   if (TYPE_FIELD_BITPOS (type, i) != 0)
     {



       if (TYPE_FIELD_BITSIZE (type, i) == 0)
  {
    nRc = 1;
    break;
  }
     }
 }
    }

  return nRc;
}
