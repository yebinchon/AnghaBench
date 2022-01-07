
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigtab ;
typedef unsigned long long pmask_t ;


 scalar_t__ isdigit (char) ;

__attribute__((used)) static int input_name2mask(char *name, pmask_t *mask, pmask_t *value,
      char *imask, char *omask)
{
 static char sigtab[10] = "EeSsPpAaBb";
 char im, om;
 pmask_t m, v;

 om = im = m = v = 0ULL;
 while (*name) {
  int in, out, bit, neg;
  for (in = 0; (in < sizeof(sigtab)) && (sigtab[in] != *name); in++)
   ;
  if (in >= sizeof(sigtab))
   return 0;
  neg = (in & 1);
  in >>= 1;
  im |= (1 << in);

  name++;
  if (isdigit(*name)) {
   out = *name - '0';
   om |= (1 << out);
  } else if (*name == '-')
   out = 8;
  else
   return 0;

  bit = (out * 5) + in;

  m |= 1ULL << bit;
  if (!neg)
   v |= 1ULL << bit;
  name++;
 }
 *mask = m;
 *value = v;
 if (imask)
  *imask |= im;
 if (omask)
  *omask |= om;
 return 1;
}
