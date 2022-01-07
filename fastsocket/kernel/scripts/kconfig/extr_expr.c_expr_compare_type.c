
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum expr_type { ____Placeholder_expr_type } expr_type ;
 int printf (char*,int,int) ;

int expr_compare_type(enum expr_type t1, enum expr_type t2)
{



 if (t1 == t2)
  return 0;
 switch (t1) {
 case 132:
 case 128:
  if (t2 == 130)
   return 1;
 case 130:
  if (t2 == 133)
   return 1;
 case 133:
  if (t2 == 129)
   return 1;
 case 129:
  if (t2 == 131)
   return 1;
 case 131:
  if (t2 == 0)
   return 1;
 default:
  return -1;
 }
 printf("[%dgt%d?]", t1, t2);
 return 0;

}
