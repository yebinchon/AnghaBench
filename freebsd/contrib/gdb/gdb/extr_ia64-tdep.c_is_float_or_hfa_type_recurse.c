
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_CODE (struct type*) ;



 int TYPE_FIELD_TYPE (struct type*,int) ;
 int TYPE_LENGTH (struct type*) ;
 int TYPE_NFIELDS (struct type*) ;
 int TYPE_TARGET_TYPE (struct type*) ;
 struct type* check_typedef (int ) ;

__attribute__((used)) static int
is_float_or_hfa_type_recurse (struct type *t, struct type **etp)
{
  switch (TYPE_CODE (t))
    {
    case 129:
      if (*etp)
 return TYPE_LENGTH (*etp) == TYPE_LENGTH (t);
      else
 {
   *etp = t;
   return 1;
 }
      break;
    case 130:
      return
 is_float_or_hfa_type_recurse (check_typedef (TYPE_TARGET_TYPE (t)),
          etp);
      break;
    case 128:
      {
 int i;

 for (i = 0; i < TYPE_NFIELDS (t); i++)
   if (!is_float_or_hfa_type_recurse
       (check_typedef (TYPE_FIELD_TYPE (t, i)), etp))
     return 0;
 return 1;
      }
      break;
    default:
      return 0;
      break;
    }
}
