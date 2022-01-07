
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int noPLen; scalar_t__ noPrint; } ;
struct TYPE_4__ {scalar_t__ node; } ;
typedef TYPE_1__ Job ;


 int MESSAGE (int ,scalar_t__) ;
 char* Str_FindSubstring (char*,scalar_t__) ;
 int beSilent ;
 TYPE_2__* commandShell ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ lastNode ;
 int stdout ;

__attribute__((used)) static char *
JobOutput(Job *job, char *cp, char *endp, int msg)
{
    char *ecp;

    if (commandShell->noPrint) {
 ecp = Str_FindSubstring(cp, commandShell->noPrint);
 while (ecp != ((void*)0)) {
     if (cp != ecp) {
  *ecp = '\0';
  if (!beSilent && msg && job->node != lastNode) {
      MESSAGE(stdout, job->node);
      lastNode = job->node;
  }






  (void)fprintf(stdout, "%s", cp);
  (void)fflush(stdout);
     }
     cp = ecp + commandShell->noPLen;
     if (cp != endp) {





  cp++;
  while (*cp == ' ' || *cp == '\t' || *cp == '\n') {
      cp++;
  }
  ecp = Str_FindSubstring(cp, commandShell->noPrint);
     } else {
  return cp;
     }
 }
    }
    return cp;
}
