
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XML_Char ;


 scalar_t__* malloc (int) ;
 int memcpy (scalar_t__*,scalar_t__ const*,int) ;

__attribute__((used)) static XML_Char *xcsdup(const XML_Char *s)
{
  XML_Char *result;
  int count = 0;
  int numBytes;


  while (s[count++] != 0) {

  }
  numBytes = count * sizeof(XML_Char);
  result = malloc(numBytes);
  if (result == ((void*)0))
    return ((void*)0);
  memcpy(result, s, numBytes);
  return result;
}
