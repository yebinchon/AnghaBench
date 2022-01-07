
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* sip_follow_continuation (char const*,char const*) ;

__attribute__((used)) static const char *sip_skip_whitespace(const char *dptr, const char *limit)
{
 for (; dptr < limit; dptr++) {
  if (*dptr == ' ')
   continue;
  if (*dptr != '\r' && *dptr != '\n')
   break;
  dptr = sip_follow_continuation(dptr, limit);
  if (dptr == ((void*)0))
   return ((void*)0);
 }
 return dptr;
}
