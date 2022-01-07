
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;







 int fputs (char*,int ) ;
 int putc (char,int ) ;
 int puts (char*) ;
 int stdout ;

__attribute__((used)) static void
print_dynamic_flags (bfd_vma flags)
{
  int first = 1;

  while (flags)
    {
      bfd_vma flag;

      flag = flags & - flags;
      flags &= ~ flag;

      if (first)
 first = 0;
      else
 putc (' ', stdout);

      switch (flag)
 {
 case 131: fputs ("ORIGIN", stdout); break;
 case 129: fputs ("SYMBOLIC", stdout); break;
 case 128: fputs ("TEXTREL", stdout); break;
 case 132: fputs ("BIND_NOW", stdout); break;
 case 130: fputs ("STATIC_TLS", stdout); break;
 default: fputs ("unknown", stdout); break;
 }
    }
  puts ("");
}
