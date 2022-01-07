
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Enumeration ;
typedef scalar_t__ Capital_Letter ;


 scalar_t__ Ch_1_Glob ;
 int Ident_1 ;
 int Ident_2 ;

Enumeration Func_1 (Capital_Letter Ch_1_Par_Val,
                                           Capital_Letter Ch_2_Par_Val)






 {
   Capital_Letter Ch_1_Loc;
   Capital_Letter Ch_2_Loc;

   Ch_1_Loc = Ch_1_Par_Val;
   Ch_2_Loc = Ch_1_Loc;
   if (Ch_2_Loc != Ch_2_Par_Val)

     return (Ident_1);
   else
   {
     Ch_1_Glob = Ch_1_Loc;
     return (Ident_2);
    }
 }
