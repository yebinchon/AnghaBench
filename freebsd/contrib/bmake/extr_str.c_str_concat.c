
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STR_ADDSLASH ;
 int STR_ADDSPACE ;
 char* bmake_malloc (unsigned int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

char *
str_concat(const char *s1, const char *s2, int flags)
{
 int len1, len2;
 char *result;


 len1 = strlen(s1);
 len2 = strlen(s2);


 result = bmake_malloc((unsigned int)(len1 + len2 + 2));


 memcpy(result, s1, len1);


 if (flags & STR_ADDSPACE) {
  result[len1] = ' ';
  ++len1;
 } else if (flags & STR_ADDSLASH) {
  result[len1] = '/';
  ++len1;
 }


 memcpy(result + len1, s2, len2 + 1);

 return(result);
}
