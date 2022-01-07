
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
slot_alignment_is_next_even (struct type *t)
{
  switch (TYPE_CODE (t))
    {
    case 129:
    case 130:
      if (TYPE_LENGTH (t) > 8)
 return 1;
      else
 return 0;
    case 131:
      return
 slot_alignment_is_next_even (check_typedef (TYPE_TARGET_TYPE (t)));
    case 128:
      {
 int i;

 for (i = 0; i < TYPE_NFIELDS (t); i++)
   if (slot_alignment_is_next_even
       (check_typedef (TYPE_FIELD_TYPE (t, i))))
     return 1;
 return 0;
      }
    default:
      return 0;
    }
}
