
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;


 scalar_t__ ALPHA_REGISTER_SIZE ;
 int TYPE_CODE (struct type*) ;
 int TYPE_CODE_STRUCT ;
 int TYPE_CODE_UNION ;
 scalar_t__ TYPE_FIELD_BITPOS (struct type*,int) ;
 scalar_t__ TYPE_FIELD_BITSIZE (struct type*,int) ;
 scalar_t__ TYPE_LENGTH (struct type*) ;
 int TYPE_NFIELDS (struct type*) ;

__attribute__((used)) static int
alphafbsd_use_struct_convention (int gcc_p, struct type *type)
{
  enum type_code code;
  int i;



  if (TYPE_LENGTH (type) > ALPHA_REGISTER_SIZE)
    return 1;



  code = TYPE_CODE (type);
  if (code != TYPE_CODE_STRUCT && code != TYPE_CODE_UNION)
    return 1;




  for (i = 0; i < TYPE_NFIELDS (type); i++)
    {

      if (TYPE_FIELD_BITPOS (type, i) != 0
   && TYPE_FIELD_BITSIZE (type, i) == 0)
 return 1;
    }

  return 0;
}
