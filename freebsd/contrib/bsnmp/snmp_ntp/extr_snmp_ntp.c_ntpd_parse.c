
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;


 scalar_t__ isspace (int) ;

__attribute__((used)) static int
ntpd_parse(u_char **data, size_t *datalen, char **namep, char **valp)
{
 u_char *ptr = *data;
 u_char *end = ptr + *datalen;
 char *ptr1;
 char endc;


 while (ptr < end && isspace((int)*ptr))
  ptr++;

 if (ptr == end)
  return (0);

 *namep = ptr;


 while (ptr < end && !isspace((int)*ptr) && *ptr != '=' && *ptr != ',')
  ptr++;
 endc = *ptr;
 *ptr++ = '\0';


 while (ptr < end && isspace((int)*ptr))
  ptr++;

 if (ptr == end || endc == ',') {

  *valp = ((void*)0);
  *datalen -= ptr - *data;
  *data = ptr;
  return (1);
 }

 if (*ptr == '"') {

  ptr++;
  *valp = ptr;
  while (ptr < end && *ptr != '"')
   ptr++;
  if (ptr == end)
   return (0);

  *ptr++ = '\0';


  while (ptr < end && isspace((int)*ptr) && *ptr == ',')
   ptr++;
 } else {
  *valp = ptr;


  while (ptr < end && *ptr != ',')
   ptr++;


  for (ptr1 = ptr; ptr1 > *valp; ptr1--)
   if (!isspace((int)ptr1[-1]))
    break;
  *ptr1 = '\0';

  if (ptr < end)
   ptr++;
 }

 *datalen -= ptr - *data;
 *data = ptr;

 return (1);
}
