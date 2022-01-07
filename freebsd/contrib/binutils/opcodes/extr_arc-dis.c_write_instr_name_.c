
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arcDisState {int nullifyMode; int instrBuffer; } ;




 char** condName ;
 char* cond_code_name (struct arcDisState*,int) ;
 int strcat (int ,char const*) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static void
write_instr_name_(struct arcDisState * state,
    const char * instrName,
    int cond,
    int condCodeIsPartOfName,
    int flag,
    int signExtend,
    int addrWriteBack,
    int directMem)
{
  strcpy (state->instrBuffer, instrName);

  if (cond > 0)
    {
      const char *cc = 0;

      if (!condCodeIsPartOfName)
 strcat (state->instrBuffer, ".");

      if (cond < 16)
 cc = condName[cond];
      else
 cc = cond_code_name (state, cond);

      if (!cc)
 cc = "???";

      strcat (state->instrBuffer, cc);
    }

  if (flag)
    strcat (state->instrBuffer, ".f");

  switch (state->nullifyMode)
    {
    case 129:
      strcat (state->instrBuffer, ".d");
      break;
    case 128:
      strcat (state->instrBuffer, ".jd");
      break;
    }

  if (signExtend)
    strcat (state->instrBuffer, ".x");

  if (addrWriteBack)
    strcat (state->instrBuffer, ".a");

  if (directMem)
    strcat (state->instrBuffer, ".di");
}
