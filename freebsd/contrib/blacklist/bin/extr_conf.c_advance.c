
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static void
advance(char **p)
{
 char *ep = *p;
 while (*ep && !isspace((unsigned char)*ep))
  ep++;
 while (*ep && isspace((unsigned char)*ep))
  *ep++ = '\0';
 *p = ep;
}
