
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rc_uint_type ;
typedef int bfd_byte ;



__attribute__((used)) static int
test_rc_datablock_unicode (rc_uint_type length, const bfd_byte *data)
{
  rc_uint_type i;
  if ((length & 1) != 0)
    return 0;

  for (i = 0; i < length; i += 2)
    {
      if (data[i] == 0 && data[i + 1] == 0 && (i + 2) < length)
 return 0;
      if (data[i] == 0xff && data[i + 1] == 0xff)
 return 0;
    }
  return 1;
}
