
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Lst ;
typedef int Boolean ;


 scalar_t__ DEBUG (int ) ;
 int FALSE ;
 int Job_CatchOutput () ;
 int Job_Finish () ;
 int Lst_ForEach (int ,int ,int*) ;
 int Lst_Init (int ) ;
 int Lst_IsEmpty (int ) ;
 int MAKE ;
 int MakePrintStatus ;
 int MakeStartJobs () ;
 int Make_ExpandUse (int ) ;
 int Make_ProcessWait (int ) ;
 int Targ_PrintGraph (int) ;
 int debug_file ;
 int fprintf (int ,char*,...) ;
 scalar_t__ jobTokensRunning ;
 scalar_t__ queryFlag ;
 int toBeMade ;

Boolean
Make_Run(Lst targs)
{
    int errors;


    toBeMade = Lst_Init(FALSE);

    Make_ExpandUse(targs);
    Make_ProcessWait(targs);

    if (DEBUG(MAKE)) {
  fprintf(debug_file, "#***# full graph\n");
  Targ_PrintGraph(1);
    }

    if (queryFlag) {





 return (MakeStartJobs());
    }







    (void)MakeStartJobs();
    while (!Lst_IsEmpty(toBeMade) || jobTokensRunning > 0) {
 Job_CatchOutput();
 (void)MakeStartJobs();
    }

    errors = Job_Finish();





    if (DEBUG(MAKE))
  fprintf(debug_file, "done: errors %d\n", errors);
    if (errors == 0) {
 Lst_ForEach(targs, MakePrintStatus, &errors);
 if (DEBUG(MAKE)) {
     fprintf(debug_file, "done: errors %d\n", errors);
     if (errors)
  Targ_PrintGraph(4);
 }
    }
    return errors != 0;
}
