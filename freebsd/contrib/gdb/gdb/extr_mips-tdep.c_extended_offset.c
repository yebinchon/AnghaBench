
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;



__attribute__((used)) static CORE_ADDR
extended_offset (unsigned int extension)
{
  CORE_ADDR value;
  value = (extension >> 21) & 0x3f;
  value = value << 6;
  value |= (extension >> 16) & 0x1f;
  value = value << 5;
  value |= extension & 0x01f;
  return value;
}
