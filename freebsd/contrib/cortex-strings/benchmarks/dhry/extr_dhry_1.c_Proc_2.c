
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ One_Fifty ;
typedef scalar_t__ Enumeration ;


 char Ch_1_Glob ;
 scalar_t__ Ident_1 ;
 scalar_t__ Int_Glob ;

void Proc_2 (One_Fifty *Int_Par_Ref)




 {
   One_Fifty Int_Loc;
   Enumeration Enum_Loc;

   Int_Loc = *Int_Par_Ref + 10;
   do
     if (Ch_1_Glob == 'A')

     {
       Int_Loc -= 1;
       *Int_Par_Ref = Int_Loc - Int_Glob;
       Enum_Loc = Ident_1;
     }
   while (Enum_Loc != Ident_1);
 }
