
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static void
breakup_args (char *scratch, char **argv)
{
  char *pp, *cp = scratch;
  char quoting = 0;

  for (;;)
    {

      quoting = 0;
      while (*cp == ' ' || *cp == '\t' || *cp == '\n')
 cp++;


      if (*cp == '\0')
 break;


      if (*cp == '"')
 {
   cp++;
   quoting = strchr (cp, '"') ? 1 : 0;
 }

      *argv++ = cp;


      pp = cp;
      if (quoting)
 cp = strchr (pp, '"');
      if ((cp == ((void*)0)) || (!quoting))
 cp = strchr (pp, ' ');
      if (cp == ((void*)0))
 cp = strchr (pp, '\t');
      if (cp == ((void*)0))
 cp = strchr (pp, '\n');


      if (cp == ((void*)0))
 {
   pp = cp;
   break;
 }


      *cp++ = '\0';
    }


  *argv = ((void*)0);
}
