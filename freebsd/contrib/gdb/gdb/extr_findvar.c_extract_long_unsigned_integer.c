
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONGEST ;


 scalar_t__ BFD_ENDIAN_BIG ;
 scalar_t__ TARGET_BYTE_ORDER ;
 int extract_unsigned_integer (char*,int) ;

int
extract_long_unsigned_integer (const void *addr, int orig_len, LONGEST *pval)
{
  char *p, *first_addr;
  int len;

  len = orig_len;
  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    {
      for (p = (char *) addr;
    len > (int) sizeof (LONGEST) && p < (char *) addr + orig_len;
    p++)
 {
   if (*p == 0)
     len--;
   else
     break;
 }
      first_addr = p;
    }
  else
    {
      first_addr = (char *) addr;
      for (p = (char *) addr + orig_len - 1;
    len > (int) sizeof (LONGEST) && p >= (char *) addr;
    p--)
 {
   if (*p == 0)
     len--;
   else
     break;
 }
    }

  if (len <= (int) sizeof (LONGEST))
    {
      *pval = (LONGEST) extract_unsigned_integer (first_addr,
        sizeof (LONGEST));
      return 1;
    }

  return 0;
}
