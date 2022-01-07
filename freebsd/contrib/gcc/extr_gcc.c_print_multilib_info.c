
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 scalar_t__ default_arg (char const*,int) ;
 int fatal (char*,char*) ;
 char* multilib_exclusions ;
 char* multilib_extra ;
 char* multilib_select ;
 int putchar (char const) ;
 int strncmp (char const*,char const*,unsigned int) ;

__attribute__((used)) static void
print_multilib_info (void)
{
  const char *p = multilib_select;
  const char *last_path = 0, *this_path;
  int skip;
  unsigned int last_path_len = 0;

  while (*p != '\0')
    {
      skip = 0;

      if (*p == '\n')
 {
   ++p;
   continue;
 }


      this_path = p;
      while (*p != ' ')
 {
   if (*p == '\0')
     {
     invalid_select:
       fatal ("multilib select '%s' is invalid", multilib_select);
     }

   ++p;
 }




      if (this_path[0] == '.' && this_path[1] == ':')
 skip = 1;




      {
 const char *e = multilib_exclusions;
 const char *this_arg;

 while (*e != '\0')
   {
     int m = 1;

     if (*e == '\n')
       {
  ++e;
  continue;
       }


     while (*e != ';')
       {
  const char *q;
  int mp = 0;

  if (*e == '\0')
    {
    invalid_exclusion:
      fatal ("multilib exclusion '%s' is invalid",
      multilib_exclusions);
    }

  if (! m)
    {
      ++e;
      continue;
    }

  this_arg = e;

  while (*e != ' ' && *e != ';')
    {
      if (*e == '\0')
        goto invalid_exclusion;
      ++e;
    }

  q = p + 1;
  while (*q != ';')
    {
      const char *arg;
      int len = e - this_arg;

      if (*q == '\0')
        goto invalid_select;

      arg = q;

      while (*q != ' ' && *q != ';')
        {
   if (*q == '\0')
     goto invalid_select;
   ++q;
        }

      if (! strncmp (arg, this_arg,
       (len < q - arg) ? q - arg : len)
   || default_arg (this_arg, e - this_arg))
        {
   mp = 1;
   break;
        }

      if (*q == ' ')
        ++q;
    }

  if (! mp)
    m = 0;

  if (*e == ' ')
    ++e;
       }

     if (m)
       {
  skip = 1;
  break;
       }

     if (*e != '\0')
       ++e;
   }
      }

      if (! skip)
 {

   skip = (last_path != 0
    && (unsigned int) (p - this_path) == last_path_len
    && ! strncmp (last_path, this_path, last_path_len));

   last_path = this_path;
   last_path_len = p - this_path;
 }




      if (! skip)
 {
   const char *q;

   q = p + 1;
   while (*q != ';')
     {
       const char *arg;

       if (*q == '\0')
  goto invalid_select;

       if (*q == '!')
  arg = ((void*)0);
       else
  arg = q;

       while (*q != ' ' && *q != ';')
  {
    if (*q == '\0')
      goto invalid_select;
    ++q;
  }

       if (arg != ((void*)0)
    && default_arg (arg, q - arg))
  {
    skip = 1;
    break;
  }

       if (*q == ' ')
  ++q;
     }
 }

      if (! skip)
 {
   const char *p1;

   for (p1 = last_path; p1 < p && *p1 != ':'; p1++)
     putchar (*p1);
   putchar (';');
 }

      ++p;
      while (*p != ';')
 {
   int use_arg;

   if (*p == '\0')
     goto invalid_select;

   if (skip)
     {
       ++p;
       continue;
     }

   use_arg = *p != '!';

   if (use_arg)
     putchar ('@');

   while (*p != ' ' && *p != ';')
     {
       if (*p == '\0')
  goto invalid_select;
       if (use_arg)
  putchar (*p);
       ++p;
     }

   if (*p == ' ')
     ++p;
 }

      if (! skip)
 {

   if (multilib_extra && *multilib_extra)
     {
       int print_at = TRUE;
       const char *q;

       for (q = multilib_extra; *q != '\0'; q++)
  {
    if (*q == ' ')
      print_at = TRUE;
    else
      {
        if (print_at)
   putchar ('@');
        putchar (*q);
        print_at = FALSE;
      }
  }
     }

   putchar ('\n');
 }

      ++p;
    }
}
