
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Lst ;
typedef int Boolean ;


 int Compat_Run (int ) ;
 int FALSE ;
 int Job_Init () ;
 int Lst_Destroy (int ,int *) ;
 scalar_t__ Lst_IsEmpty (int ) ;
 int Make_Run (int ) ;
 int Parse_MainName () ;
 int TARG_CREATE ;
 int TRUE ;
 int Targ_FindList (int ,int ) ;
 int compatMake ;
 int create ;
 int jobsRunning ;
 int queryFlag ;

__attribute__((used)) static Boolean
runTargets(void)
{
 Lst targs;
 Boolean outOfDate;







 if (Lst_IsEmpty(create))
  targs = Parse_MainName();
 else
  targs = Targ_FindList(create, TARG_CREATE);

 if (!compatMake) {







  if (!queryFlag) {
   Job_Init();
   jobsRunning = TRUE;
  }


  outOfDate = Make_Run(targs);
 } else {




  Compat_Run(targs);
  outOfDate = FALSE;
 }
 Lst_Destroy(targs, ((void*)0));
 return outOfDate;
}
