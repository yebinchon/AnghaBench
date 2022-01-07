
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;


 int _ (char*) ;
 int abort () ;
 int error (int ,int) ;

__attribute__((used)) static void
byte_put_big_endian (unsigned char *field, bfd_vma value, int size)
{
  switch (size)
    {
    case 8:
      field[7] = value & 0xff;
      field[6] = (value >> 8) & 0xff;
      field[5] = (value >> 16) & 0xff;
      field[4] = (value >> 24) & 0xff;
      value >>= 16;
      value >>= 16;

    case 4:
      field[3] = value & 0xff;
      field[2] = (value >> 8) & 0xff;
      value >>= 16;

    case 2:
      field[1] = value & 0xff;
      value >>= 8;

    case 1:
      field[0] = value & 0xff;
      break;

    default:
      error (_("Unhandled data length: %d\n"), size);
      abort ();
    }
}
