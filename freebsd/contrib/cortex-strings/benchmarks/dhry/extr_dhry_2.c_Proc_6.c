
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Enumeration ;


 int Func_3 (int) ;





 int Int_Glob ;

void Proc_6 (Enumeration Enum_Val_Par, Enumeration *Enum_Ref_Par)




 {
   *Enum_Ref_Par = Enum_Val_Par;
   if (! Func_3 (Enum_Val_Par))

     *Enum_Ref_Par = 129;
   switch (Enum_Val_Par)
   {
     case 132:
       *Enum_Ref_Par = 132;
       break;
     case 131:
       if (Int_Glob > 100)

       *Enum_Ref_Par = 132;
       else *Enum_Ref_Par = 129;
       break;
     case 130:
       *Enum_Ref_Par = 131;
       break;
     case 129: break;
     case 128:
       *Enum_Ref_Par = 130;
       break;
   }
 }
