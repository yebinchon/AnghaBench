
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ One_Fifty ;



void Proc_7 (One_Fifty Int_1_Par_Val, One_Fifty Int_2_Par_Val,
                                              One_Fifty *Int_Par_Ref)
 {
   One_Fifty Int_Loc;

   Int_Loc = Int_1_Par_Val + 2;
   *Int_Par_Ref = Int_2_Par_Val + Int_Loc;
 }
