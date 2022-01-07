
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dwarf_vma ;


 int abort () ;
 int byte_get (unsigned char*,int) ;

__attribute__((used)) static dwarf_vma
byte_get_signed (unsigned char *field, int size)
{
  dwarf_vma x = byte_get (field, size);

  switch (size)
    {
    case 1:
      return (x ^ 0x80) - 0x80;
    case 2:
      return (x ^ 0x8000) - 0x8000;
    case 4:
      return (x ^ 0x80000000) - 0x80000000;
    case 8:
      return x;
    default:
      abort ();
    }
}
