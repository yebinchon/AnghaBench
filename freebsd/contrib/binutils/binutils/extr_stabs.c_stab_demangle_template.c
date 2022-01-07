
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_demangle_info {int dummy; } ;
typedef int debug_type ;
typedef scalar_t__ bfd_boolean ;


 int DMGL_ANSI ;
 scalar_t__ FALSE ;
 scalar_t__ ISDIGIT (char const) ;
 scalar_t__ TRUE ;
 int abort () ;
 char* concat (char*,char*,char const*) ;
 char* cplus_demangle (char*,int ) ;
 int free (char*) ;
 char* savestring (char const*,int) ;
 int stab_bad_demangle (char const*) ;
 unsigned int stab_demangle_count (char const**) ;
 scalar_t__ stab_demangle_get_count (char const**,unsigned int*) ;
 int stab_demangle_type (struct stab_demangle_info*,char const**,int *) ;
 unsigned int strlen (char const*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static bfd_boolean
stab_demangle_template (struct stab_demangle_info *minfo, const char **pp,
   char **pname)
{
  const char *orig;
  unsigned int r, i;

  orig = *pp;

  ++*pp;


  r = stab_demangle_count (pp);
  if (r == 0 || strlen (*pp) < r)
    {
      stab_bad_demangle (orig);
      return FALSE;
    }
  *pp += r;


  if (stab_demangle_get_count (pp, &r) == 0)
    {
      stab_bad_demangle (orig);
      return FALSE;
    }

  for (i = 0; i < r; i++)
    {
      if (**pp == 'Z')
 {

   ++*pp;
   if (! stab_demangle_type (minfo, pp, (debug_type *) ((void*)0)))
     return FALSE;
 }
      else
 {
   const char *old_p;
   bfd_boolean pointerp, realp, integralp, charp, boolp;
   bfd_boolean done;

   old_p = *pp;
   pointerp = FALSE;
   realp = FALSE;
   integralp = FALSE;
   charp = FALSE;
   boolp = FALSE;
   done = FALSE;



   if (! stab_demangle_type (minfo, pp, (debug_type *) ((void*)0)))
     return FALSE;

   while (*old_p != '\0' && ! done)
     {
       switch (*old_p)
  {
  case 'P':
  case 'p':
  case 'R':
    pointerp = TRUE;
    done = TRUE;
    break;
  case 'C':
  case 'S':
  case 'U':
  case 'V':
  case 'F':
  case 'M':
  case 'O':
    ++old_p;
    break;
  case 'Q':
    integralp = TRUE;
    done = TRUE;
    break;
  case 'T':
    abort ();
  case 'v':
    abort ();
  case 'x':
  case 'l':
  case 'i':
  case 's':
  case 'w':
    integralp = TRUE;
    done = TRUE;
    break;
  case 'b':
    boolp = TRUE;
    done = TRUE;
    break;
  case 'c':
    charp = TRUE;
    done = TRUE;
    break;
  case 'r':
  case 'd':
  case 'f':
    realp = TRUE;
    done = TRUE;
    break;
  default:

    integralp = TRUE;
    done = TRUE;
    break;
  }
     }

   if (integralp)
     {
       if (**pp == 'm')
  ++*pp;
       while (ISDIGIT (**pp))
  ++*pp;
     }
   else if (charp)
     {
       unsigned int val;

       if (**pp == 'm')
  ++*pp;
       val = stab_demangle_count (pp);
       if (val == 0)
  {
    stab_bad_demangle (orig);
    return FALSE;
  }
     }
   else if (boolp)
     {
       unsigned int val;

       val = stab_demangle_count (pp);
       if (val != 0 && val != 1)
  {
    stab_bad_demangle (orig);
    return FALSE;
  }
     }
   else if (realp)
     {
       if (**pp == 'm')
  ++*pp;
       while (ISDIGIT (**pp))
  ++*pp;
       if (**pp == '.')
  {
    ++*pp;
    while (ISDIGIT (**pp))
      ++*pp;
  }
       if (**pp == 'e')
  {
    ++*pp;
    while (ISDIGIT (**pp))
      ++*pp;
  }
     }
   else if (pointerp)
     {
       unsigned int len;

       len = stab_demangle_count (pp);
       if (len == 0)
  {
    stab_bad_demangle (orig);
    return FALSE;
  }
       *pp += len;
     }
 }
    }



  if (pname != ((void*)0))
    {
      char *s1, *s2, *s3, *s4 = ((void*)0);
      char *from, *to;

      s1 = savestring (orig, *pp - orig);

      s2 = concat ("NoSuchStrinG__", s1, (const char *) ((void*)0));

      free (s1);

      s3 = cplus_demangle (s2, DMGL_ANSI);

      free (s2);

      if (s3 != ((void*)0))
 s4 = strstr (s3, "::NoSuchStrinG");
      if (s3 == ((void*)0) || s4 == ((void*)0))
 {
   stab_bad_demangle (orig);
   if (s3 != ((void*)0))
     free (s3);
   return FALSE;
 }




      for (from = to = s3; from != s4; ++from)
 if (*from != ' '
     || (from[1] == '>' && from > s3 && from[-1] == '>'))
   *to++ = *from;

      *pname = savestring (s3, to - s3);

      free (s3);
    }

  return TRUE;
}
