
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool tomoyo_is_byte_range(const char *str)
{
 return *str >= '0' && *str++ <= '3' &&
  *str >= '0' && *str++ <= '7' &&
  *str >= '0' && *str <= '7';
}
