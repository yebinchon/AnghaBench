
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tag; char* name; int type; char** table; } ;
typedef TYPE_1__ arm_attr_public_tag ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int abort () ;
 TYPE_1__* arm_attr_public_tags ;
 int assert (int) ;
 int printf (char*,...) ;
 int read_uleb128 (unsigned char*,unsigned int*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static unsigned char *
display_arm_attribute (unsigned char *p)
{
  int tag;
  unsigned int len;
  int val;
  arm_attr_public_tag *attr;
  unsigned i;
  int type;

  tag = read_uleb128 (p, &len);
  p += len;
  attr = ((void*)0);
  for (i = 0; i < ARRAY_SIZE(arm_attr_public_tags); i++)
    {
      if (arm_attr_public_tags[i].tag == tag)
 {
   attr = &arm_attr_public_tags[i];
   break;
 }
    }

  if (attr)
    {
      printf ("  Tag_%s: ", attr->name);
      switch (attr->type)
 {
 case 0:
   switch (tag)
     {
     case 7:
       val = read_uleb128 (p, &len);
       p += len;
       switch (val)
  {
  case 0: printf ("None\n"); break;
  case 'A': printf ("Application\n"); break;
  case 'R': printf ("Realtime\n"); break;
  case 'M': printf ("Microcontroller\n"); break;
  default: printf ("??? (%d)\n", val); break;
  }
       break;

     case 32:
       val = read_uleb128 (p, &len);
       p += len;
       printf ("flag = %d, vendor = %s\n", val, p);
       p += strlen((char *)p) + 1;
       break;

     default:
       abort();
     }
   return p;

 case 1:
 case 2:
   type = attr->type;
   break;

 default:
   assert (attr->type & 0x80);
   val = read_uleb128 (p, &len);
   p += len;
   type = attr->type & 0x7f;
   if (val >= type)
     printf ("??? (%d)\n", val);
   else
     printf ("%s\n", attr->table[val]);
   return p;
 }
    }
  else
    {
      if (tag & 1)
 type = 1;
      else
 type = 2;
      printf ("  Tag_unknown_%d: ", tag);
    }

  if (type == 1)
    {
      printf ("\"%s\"\n", p);
      p += strlen((char *)p) + 1;
    }
  else
    {
      val = read_uleb128 (p, &len);
      p += len;
      printf ("%d (0x%x)\n", val, val);
    }

  return p;
}
