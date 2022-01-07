
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool __match_charclass(const char *pat, char c, const char **npat)
{
 bool complement = 0, ret = 1;

 if (*pat == '!') {
  complement = 1;
  pat++;
 }
 if (*pat++ == c)
  goto end;

 while (*pat && *pat != ']') {
  if (*pat == '-' && *(pat + 1) != ']') {
   if (*(pat - 1) <= c && c <= *(pat + 1))
    goto end;
   if (*(pat - 1) > *(pat + 1))
    goto error;
   pat += 2;
  } else if (*pat++ == c)
   goto end;
 }
 if (!*pat)
  goto error;
 ret = 0;

end:
 while (*pat && *pat != ']')
  pat++;
 if (!*pat)
  goto error;
 *npat = pat + 1;
 return complement ? !ret : ret;

error:
 return 0;
}
