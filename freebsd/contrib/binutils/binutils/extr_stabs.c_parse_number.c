
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef scalar_t__ bfd_signed_vma ;
typedef scalar_t__ bfd_boolean ;


 scalar_t__ FALSE ;
 scalar_t__ ISDIGIT (int) ;
 scalar_t__ ISLOWER (int) ;
 scalar_t__ ISUPPER (int) ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 scalar_t__ errno ;
 unsigned long strtoul (char const*,char**,int ) ;
 int warn_stab (char const*,int ) ;

__attribute__((used)) static bfd_vma
parse_number (const char **pp, bfd_boolean *poverflow)
{
  unsigned long ul;
  const char *orig;

  if (poverflow != ((void*)0))
    *poverflow = FALSE;

  orig = *pp;

  errno = 0;
  ul = strtoul (*pp, (char **) pp, 0);
  if (ul + 1 != 0 || errno == 0)
    {



      if (*orig == '-')
 return (bfd_vma) (bfd_signed_vma) (long) ul;
      return (bfd_vma) ul;
    }



  if (sizeof (bfd_vma) > sizeof (unsigned long))
    {
      const char *p;
      bfd_boolean neg;
      int base;
      bfd_vma over, lastdig;
      bfd_boolean overflow;
      bfd_vma v;


      p = orig;

      neg = FALSE;
      if (*p == '+')
 ++p;
      else if (*p == '-')
 {
   neg = TRUE;
   ++p;
 }

      base = 10;
      if (*p == '0')
 {
   if (p[1] == 'x' || p[1] == 'X')
     {
       base = 16;
       p += 2;
     }
   else
     {
       base = 8;
       ++p;
     }
 }

      over = ((bfd_vma) (bfd_signed_vma) -1) / (bfd_vma) base;
      lastdig = ((bfd_vma) (bfd_signed_vma) -1) % (bfd_vma) base;

      overflow = FALSE;
      v = 0;
      while (1)
 {
   int d;

   d = *p++;
   if (ISDIGIT (d))
     d -= '0';
   else if (ISUPPER (d))
     d -= 'A';
   else if (ISLOWER (d))
     d -= 'a';
   else
     break;

   if (d >= base)
     break;

   if (v > over || (v == over && (bfd_vma) d > lastdig))
     {
       overflow = TRUE;
       break;
     }
 }

      if (! overflow)
 {
   if (neg)
     v = - v;
   return v;
 }
    }



  if (poverflow != ((void*)0))
    *poverflow = TRUE;
  else
    warn_stab (orig, _("numeric overflow"));

  return 0;
}
