
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Int_Comp; } ;
struct TYPE_6__ {TYPE_1__ var_1; } ;
struct TYPE_7__ {TYPE_2__ variant; int Ptr_Comp; } ;
typedef int Rec_Pointer ;


 int Int_Glob ;
 TYPE_3__* Null ;
 int Proc_7 (int,int ,int *) ;
 TYPE_3__* Ptr_Glob ;

void Proc_3 (Rec_Pointer *Ptr_Ref_Par)




 {
   if (Ptr_Glob != Null)

     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
 }
