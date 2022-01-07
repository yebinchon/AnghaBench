
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int encode_spdif_bits(unsigned char *status)
{
 return ((unsigned int)status[0] << 0) |
  ((unsigned int)status[1] << 8) |
  ((unsigned int)status[2] << 16) |
  ((unsigned int)status[3] << 24);
}
