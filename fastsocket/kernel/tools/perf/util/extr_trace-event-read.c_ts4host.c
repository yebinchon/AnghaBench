
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ file_bigendian ;

__attribute__((used)) static unsigned int ts4host(unsigned int type_len_ts)
{
 if (file_bigendian)
  return type_len_ts & ((1 << 27) - 1);
 else
  return type_len_ts >> 5;
}
