
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 int FALSE ;
 int ISHEX (char) ;
 int TRUE ;
 unsigned int hex_value (int ) ;

__attribute__((used)) static bfd_boolean
getsym (char *dstp, char **srcp, unsigned int *lenp)
{
  char *src = *srcp;
  unsigned int i;
  unsigned int len;

  if (!ISHEX (*src))
    return FALSE;

  len = hex_value (*src++);
  if (len == 0)
    len = 16;
  for (i = 0; i < len; i++)
    dstp[i] = src[i];
  dstp[i] = 0;
  *srcp = src + i;
  *lenp = len;
  return TRUE;
}
