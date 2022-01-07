
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Tag_GNU_MIPS_ABI_FP ;
 int printf (char*,...) ;
 int read_uleb128 (unsigned char*,unsigned int*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static unsigned char *
display_mips_gnu_attribute (unsigned char *p, int tag)
{
  int type;
  unsigned int len;
  int val;

  if (tag == Tag_GNU_MIPS_ABI_FP)
    {
      val = read_uleb128 (p, &len);
      p += len;
      printf ("  Tag_GNU_MIPS_ABI_FP: ");
      switch (val)
 {
 case 0:
   printf ("Hard or soft float\n");
   break;
 case 1:
   printf ("Hard float (-mdouble-float)\n");
   break;
 case 2:
   printf ("Hard float (-msingle-float)\n");
   break;
 case 3:
   printf ("Soft float\n");
   break;
 default:
   printf ("??? (%d)\n", val);
   break;
 }
      return p;
   }

  if (tag & 1)
    type = 1;
  else
    type = 2;
  printf ("  Tag_unknown_%d: ", tag);

  if (type == 1)
    {
      printf ("\"%s\"\n", p);
      p += strlen ((char *)p) + 1;
    }
  else
    {
      val = read_uleb128 (p, &len);
      p += len;
      printf ("%d (0x%x)\n", val, val);
    }

  return p;
}
