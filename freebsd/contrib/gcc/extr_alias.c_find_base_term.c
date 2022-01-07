
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct elt_loc_list {int loc; struct elt_loc_list* next; } ;
typedef int rtx ;
struct TYPE_3__ {struct elt_loc_list* locs; } ;
typedef TYPE_1__ cselib_val ;


 int ADDRESS ;


 int CONSTANT_P (int ) ;
 int CONST_INT ;
 TYPE_1__* CSELIB_VAL_PTR (int ) ;
 int FIND_BASE_TERM (int ) ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_SIZE (int ) ;

 int INTVAL (int ) ;
 int Pmode ;

 int REG_BASE_VALUE (int ) ;
 int REG_P (int ) ;
 int REG_POINTER (int ) ;




 int VOIDmode ;
 int XEXP (int ,int) ;

 int convert_memory_address (int ,int ) ;
 int pic_offset_table_rtx ;

rtx
find_base_term (rtx x)
{
  cselib_val *val;
  struct elt_loc_list *l;






  switch (GET_CODE (x))
    {
    case 133:
      return REG_BASE_VALUE (x);

    case 130:
      if (GET_MODE_SIZE (GET_MODE (x)) < GET_MODE_SIZE (Pmode))
 return 0;

    case 144:
    case 135:
    case 136:
    case 138:
    case 139:
    case 134:
    case 137:
      return find_base_term (XEXP (x, 0));

    case 128:
    case 132:
      {
 rtx temp = find_base_term (XEXP (x, 0));

 if (temp != 0 && CONSTANT_P (temp))
   temp = convert_memory_address (Pmode, temp);

 return temp;
      }

    case 129:
      val = CSELIB_VAL_PTR (x);
      if (!val)
 return 0;
      for (l = val->locs; l; l = l->next)
 if ((x = find_base_term (l->loc)) != 0)
   return x;
      return 0;

    case 145:
      x = XEXP (x, 0);
      if (GET_CODE (x) != 140 && GET_CODE (x) != 141)
 return 0;

    case 142:
    case 140:
    case 141:
      {
 rtx tmp1 = XEXP (x, 0);
 rtx tmp2 = XEXP (x, 1);
 if (tmp1 == pic_offset_table_rtx && CONSTANT_P (tmp2))
   return find_base_term (tmp2);



 if (REG_P (tmp1) && REG_POINTER (tmp1))
   return find_base_term (tmp1);

 if (REG_P (tmp2) && REG_POINTER (tmp2))
   return find_base_term (tmp2);



 tmp1 = find_base_term (tmp1);
 tmp2 = find_base_term (tmp2);




 if (tmp1 != 0
     && (GET_CODE (tmp1) == 131
  || GET_CODE (tmp1) == 143
  || (GET_CODE (tmp1) == ADDRESS
      && GET_MODE (tmp1) != VOIDmode)))
   return tmp1;

 if (tmp2 != 0
     && (GET_CODE (tmp2) == 131
  || GET_CODE (tmp2) == 143
  || (GET_CODE (tmp2) == ADDRESS
      && GET_MODE (tmp2) != VOIDmode)))
   return tmp2;




 return 0;
      }

    case 146:
      if (GET_CODE (XEXP (x, 1)) == CONST_INT && INTVAL (XEXP (x, 1)) != 0)
 return find_base_term (XEXP (x, 0));
      return 0;

    case 131:
    case 143:
      return x;

    default:
      return 0;
    }
}
