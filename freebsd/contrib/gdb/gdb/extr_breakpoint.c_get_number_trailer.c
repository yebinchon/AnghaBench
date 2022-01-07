
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;


 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_INT ;
 int VALUE_TYPE (struct value*) ;
 scalar_t__ alloca (int) ;
 int atoi (char*) ;
 int breakpoint_count ;
 scalar_t__ isalnum (char) ;
 scalar_t__ isspace (char) ;
 int lookup_internalvar (char*) ;
 int printf_filtered (char*) ;
 int strncpy (char*,char*,int) ;
 scalar_t__ value_as_long (struct value*) ;
 struct value* value_of_internalvar (int ) ;

__attribute__((used)) static int
get_number_trailer (char **pp, int trailer)
{
  int retval = 0;
  char *p = *pp;

  if (p == ((void*)0))

    return breakpoint_count;
  else if (*p == '$')
    {


      char *varname;
      char *start = ++p;
      struct value *val;

      while (isalnum (*p) || *p == '_')
 p++;
      varname = (char *) alloca (p - start + 1);
      strncpy (varname, start, p - start);
      varname[p - start] = '\0';
      val = value_of_internalvar (lookup_internalvar (varname));
      if (TYPE_CODE (VALUE_TYPE (val)) == TYPE_CODE_INT)
 retval = (int) value_as_long (val);
      else
 {
   printf_filtered ("Convenience variable must have integer value.\n");
   retval = 0;
 }
    }
  else
    {
      if (*p == '-')
 ++p;
      while (*p >= '0' && *p <= '9')
 ++p;
      if (p == *pp)

 {

   while (*p && !isspace((int) *p))
     ++p;

   retval = 0;
 }
      else
 retval = atoi (*pp);
    }
  if (!(isspace (*p) || *p == '\0' || *p == trailer))
    {

      while (!(isspace (*p) || *p == '\0' || *p == trailer))
 ++p;
      retval = 0;
    }
  while (isspace (*p))
    p++;
  *pp = p;
  return retval;
}
