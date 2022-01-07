
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strncmp (char const*,char const*,unsigned int) ;

__attribute__((used)) static const char *ct_sdp_header_search(const char *dptr, const char *limit,
     const char *needle, unsigned int len)
{
 for (limit -= len; dptr < limit; dptr++) {
  if (*dptr == '\r' || *dptr == '\n')
   break;
  if (strncmp(dptr, needle, len) == 0)
   return dptr;
 }
 return ((void*)0);
}
