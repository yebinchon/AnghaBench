
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_desc {char const* name; scalar_t__ is_numeric; } ;


 int atoi (char const*) ;
 int printf (char*,...) ;
 int write_upcase (char const*) ;

__attribute__((used)) static void
write_attr_valueq (struct attr_desc *attr, const char *s)
{
  if (attr->is_numeric)
    {
      int num = atoi (s);

      printf ("%d", num);

      if (num > 9 || num < 0)
 printf (" /* 0x%x */", num);
    }
  else
    {
      write_upcase (attr->name);
      printf ("_");
      write_upcase (s);
    }
}
