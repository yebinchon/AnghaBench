
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XML_Char ;



__attribute__((used)) static int xcscmp(const XML_Char *xs, const XML_Char *xt)
{
  while (*xs != 0 && *xt != 0) {
    if (*xs < *xt)
      return -1;
    if (*xs > *xt)
      return 1;
    xs++;
    xt++;
  }
  if (*xs < *xt)
    return -1;
  if (*xs > *xt)
    return 1;
  return 0;
}
