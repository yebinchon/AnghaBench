
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;


 int _ (char*) ;
 int abort () ;
 int error (int ,int) ;

__attribute__((used)) static void
byte_put_little_endian (unsigned char *field, bfd_vma value, int size)
{
  switch (size)
    {
    case 8:
      field[7] = (((value >> 24) >> 24) >> 8) & 0xff;
      field[6] = ((value >> 24) >> 24) & 0xff;
      field[5] = ((value >> 24) >> 16) & 0xff;
      field[4] = ((value >> 24) >> 8) & 0xff;

    case 4:
      field[3] = (value >> 24) & 0xff;
      field[2] = (value >> 16) & 0xff;

    case 2:
      field[1] = (value >> 8) & 0xff;

    case 1:
      field[0] = value & 0xff;
      break;

    default:
      error (_("Unhandled data length: %d\n"), size);
      abort ();
    }
}
