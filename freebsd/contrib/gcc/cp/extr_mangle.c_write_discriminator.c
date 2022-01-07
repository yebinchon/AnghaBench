
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write_char (char) ;
 int write_unsigned_number (int const) ;

__attribute__((used)) static void
write_discriminator (const int discriminator)
{

  if (discriminator > 0)
    {
      write_char ('_');
      write_unsigned_number (discriminator - 1);
    }
}
