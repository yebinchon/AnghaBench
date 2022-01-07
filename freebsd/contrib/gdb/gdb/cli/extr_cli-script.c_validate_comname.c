
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char*) ;
 int error_no_arg (char*) ;
 int isalnum (char) ;

__attribute__((used)) static void
validate_comname (char *comname)
{
  char *p;

  if (comname == 0)
    error_no_arg ("name of command to define");

  p = comname;
  while (*p)
    {
      if (!isalnum (*p) && *p != '-' && *p != '_')
 error ("Junk in argument list: \"%s\"", p);
      p++;
    }
}
