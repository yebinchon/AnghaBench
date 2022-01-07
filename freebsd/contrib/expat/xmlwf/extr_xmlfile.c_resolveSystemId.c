
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XML_Char ;


 scalar_t__ const T (char) ;
 scalar_t__ isAsciiLetter (scalar_t__ const) ;
 scalar_t__ malloc (int) ;
 int tcscpy (scalar_t__*,scalar_t__ const*) ;
 int tcslen (scalar_t__ const*) ;
 scalar_t__* tcsrchr (scalar_t__*,scalar_t__ const) ;

__attribute__((used)) static const XML_Char *
resolveSystemId(const XML_Char *base, const XML_Char *systemId,
                XML_Char **toFree)
{
  XML_Char *s;
  *toFree = 0;
  if (!base
      || *systemId == T('/')




     )
    return systemId;
  *toFree = (XML_Char *)malloc((tcslen(base) + tcslen(systemId) + 2)
                               * sizeof(XML_Char));
  if (!*toFree)
    return systemId;
  tcscpy(*toFree, base);
  s = *toFree;
  if (tcsrchr(s, T('/')))
    s = tcsrchr(s, T('/')) + 1;




  tcscpy(s, systemId);
  return *toFree;
}
