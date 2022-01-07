
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;
 int read_uleb128 (unsigned char*,unsigned int*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static unsigned char *
display_gnu_attribute (unsigned char *p,
         unsigned char *(*display_proc_gnu_attribute)
       (unsigned char *, int))
{
  int tag;
  unsigned int len;
  int val;
  int type;

  tag = read_uleb128 (p, &len);
  p += len;



  if (tag == 32)
    {
      val = read_uleb128 (p, &len);
      p += len;
      printf ("flag = %d, vendor = %s\n", val, p);
      p += strlen((char *)p) + 1;
      return p;
    }

  if ((tag & 2) == 0 && display_proc_gnu_attribute)
    return display_proc_gnu_attribute (p, tag);

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
