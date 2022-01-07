
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 char* PLURAL (int) ;
 int RRexpect ;
 int RRtotal ;
 int SRexpect ;
 int SRtotal ;
 int exit_code ;
 int fprintf (int ,char*,...) ;
 char* myname ;
 int stderr ;

__attribute__((used)) static void
total_conflicts(void)
{
    fprintf(stderr, "%s: ", myname);
    if (SRtotal == 1)
 fprintf(stderr, "1 shift/reduce conflict");
    else if (SRtotal > 1)
 fprintf(stderr, "%d shift/reduce conflicts", SRtotal);

    if (SRtotal && RRtotal)
 fprintf(stderr, ", ");

    if (RRtotal == 1)
 fprintf(stderr, "1 reduce/reduce conflict");
    else if (RRtotal > 1)
 fprintf(stderr, "%d reduce/reduce conflicts", RRtotal);

    fprintf(stderr, ".\n");

    if (SRexpect >= 0 && SRtotal != SRexpect)
    {
 fprintf(stderr, "%s: ", myname);
 fprintf(stderr, "expected %d shift/reduce conflict%s.\n",
  SRexpect, PLURAL(SRexpect));
 exit_code = EXIT_FAILURE;
    }
    if (RRexpect >= 0 && RRtotal != RRexpect)
    {
 fprintf(stderr, "%s: ", myname);
 fprintf(stderr, "expected %d reduce/reduce conflict%s.\n",
  RRexpect, PLURAL(RRexpect));
 exit_code = EXIT_FAILURE;
    }
}
