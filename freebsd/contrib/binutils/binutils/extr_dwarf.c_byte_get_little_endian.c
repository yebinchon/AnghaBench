
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char dwarf_vma ;


 int _ (char*) ;
 int abort () ;
 int error (int ,int) ;

dwarf_vma
byte_get_little_endian (unsigned char *field, int size)
{
  switch (size)
    {
    case 1:
      return *field;

    case 2:
      return ((unsigned int) (field[0]))
 | (((unsigned int) (field[1])) << 8);

    case 4:
      return ((unsigned long) (field[0]))
 | (((unsigned long) (field[1])) << 8)
 | (((unsigned long) (field[2])) << 16)
 | (((unsigned long) (field[3])) << 24);

    case 8:
      if (sizeof (dwarf_vma) == 8)
 return ((dwarf_vma) (field[0]))
   | (((dwarf_vma) (field[1])) << 8)
   | (((dwarf_vma) (field[2])) << 16)
   | (((dwarf_vma) (field[3])) << 24)
   | (((dwarf_vma) (field[4])) << 32)
   | (((dwarf_vma) (field[5])) << 40)
   | (((dwarf_vma) (field[6])) << 48)
   | (((dwarf_vma) (field[7])) << 56);
      else if (sizeof (dwarf_vma) == 4)



 return ((unsigned long) (field[0]))
   | (((unsigned long) (field[1])) << 8)
   | (((unsigned long) (field[2])) << 16)
   | (((unsigned long) (field[3])) << 24);

    default:
      error (_("Unhandled data length: %d\n"), size);
      abort ();
    }
}
