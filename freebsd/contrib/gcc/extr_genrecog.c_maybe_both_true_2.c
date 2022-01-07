
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ mode; TYPE_1__* data; int name; } ;
struct TYPE_6__ {scalar_t__ mode; size_t code; scalar_t__ veclen; TYPE_2__ pred; int intval; int num_insns; } ;
struct decision_test {int type; TYPE_3__ u; } ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_4__ {scalar_t__* codes; } ;
 int DT_pred ;

 int const DT_veclen_ge ;
 int NUM_RTX_CODE ;
 scalar_t__ VOIDmode ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
maybe_both_true_2 (struct decision_test *d1, struct decision_test *d2)
{
  if (d1->type == d2->type)
    {
      switch (d1->type)
 {
 case 129:
   if (d1->u.num_insns == d2->u.num_insns)
     return 1;
   else
     return -1;

 case 130:
   return d1->u.mode == d2->u.mode;

 case 135:
   return d1->u.code == d2->u.code;

 case 128:
   return d1->u.veclen == d2->u.veclen;

 case 133:
 case 134:
 case 132:
 case 131:
   return d1->u.intval == d2->u.intval;

 default:
   break;
 }
    }





  if (d1->type == DT_pred || d2->type == DT_pred)
    {
      if (d2->type == DT_pred)
 {
   struct decision_test *tmp;
   tmp = d1, d1 = d2, d2 = tmp;
 }


      if (d1->u.pred.mode != VOIDmode)
 {
   if (d2->type == 130)
     {
       if (d1->u.pred.mode != d2->u.mode




    && strcmp (d1->u.pred.name, "address_operand") != 0)
  return 0;
     }




 }

      if (d1->u.pred.data)
 {


   if (d2->type == 135)
     {
       if (!d1->u.pred.data->codes[d2->u.code])
  return 0;
     }


   else if (d2->type == DT_pred && d2->u.pred.data)
     {
       bool common = 0;
       enum rtx_code c;

       for (c = 0; c < NUM_RTX_CODE; c++)
  if (d1->u.pred.data->codes[c] && d2->u.pred.data->codes[c])
    {
      common = 1;
      break;
    }

       if (!common)
  return 0;
     }
 }
    }


  if (d1->type == 128 && d2->type == DT_veclen_ge)
    return d1->u.veclen >= d2->u.veclen;
  if (d1->type == DT_veclen_ge && d2->type == 128)
    return d2->u.veclen >= d1->u.veclen;

  return -1;
}
