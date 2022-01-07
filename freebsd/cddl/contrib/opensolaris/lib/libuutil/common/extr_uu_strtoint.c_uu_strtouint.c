
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ UINT16_MAX ;
 scalar_t__ UINT32_MAX ;
 scalar_t__ UINT64_MAX ;
 scalar_t__ UINT8_MAX ;
 int UU_ERROR_INVALID_ARGUMENT ;
 int UU_ERROR_OVERFLOW ;
 int UU_ERROR_UNDERFLOW ;
 int strtoint (char const*,scalar_t__*,int,int ) ;
 int uu_set_error (int ) ;

int
uu_strtouint(const char *s, void *v, size_t sz, int base,
    uint64_t min, uint64_t max)
{
 uint64_t val;

 if (min > max)
  goto bad_argument;

 switch (sz) {
 case 1:
  if (max > UINT8_MAX)
   goto bad_argument;
  break;
 case 2:
  if (max > UINT16_MAX)
   goto bad_argument;
  break;
 case 4:
  if (max > UINT32_MAX)
   goto bad_argument;
  break;
 case 8:
  if (max > UINT64_MAX)
   goto bad_argument;
  break;
 default:
  goto bad_argument;
 }

 if (min == 0 && max == 0) {

  max = (1ULL << (8 * sz - 1)) * 2 - 1;
 }

 if (strtoint(s, &val, base, 0) == -1)
  return (-1);

 if (val < min) {
  uu_set_error(UU_ERROR_UNDERFLOW);
  return (-1);
 } else if (val > max) {
  uu_set_error(UU_ERROR_OVERFLOW);
  return (-1);
 }

 switch (sz) {
 case 1:
  *(uint8_t *)v = val;
  return (0);
 case 2:
  *(uint16_t *)v = val;
  return (0);
 case 4:
  *(uint32_t *)v = val;
  return (0);
 case 8:
  *(uint64_t *)v = val;
  return (0);
 default:
  break;
 }

bad_argument:
 uu_set_error(UU_ERROR_INVALID_ARGUMENT);
 return (-1);
}
