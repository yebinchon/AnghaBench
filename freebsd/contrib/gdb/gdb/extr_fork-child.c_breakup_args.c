
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static void
breakup_args (char *scratch, char **argv)
{
  char *cp = scratch;

  for (;;)
    {


      while (*cp == ' ' || *cp == '\t' || *cp == '\n')
 {
   cp++;
 }


      if (*cp == '\0')
 break;


      *argv++ = cp;


      cp = strchr (cp, ' ');
      if (cp == ((void*)0))
 cp = strchr (cp, '\t');
      if (cp == ((void*)0))
 cp = strchr (cp, '\n');


      if (cp == ((void*)0))
 break;


      *cp++ = '\0';
    }


  *argv = ((void*)0);

}
