
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XFREE (char*) ;
 int memset (char*,int ,size_t) ;
 int strlen (char const*) ;
 int strncat (char*,char const*,size_t) ;
 int strncpy (char*,char const*,size_t) ;
 char* strstr (char const*,char const*) ;
 scalar_t__ xmalloc (size_t) ;

__attribute__((used)) static char *
sun_strsub(const char *src, const char *str, const char *sub)
{

  char *retval = ((void*)0), *str_start, *str_end, *src_end;
  size_t total_size, first_half, second_half, sub_size;


  if ((str_start = strstr(src, str)) == ((void*)0)) {
    return retval;
  }
  str_end = (strlen(str) - 1) + str_start;


  src_end = (strlen(src) - 1) + (char*)src;


  first_half = (size_t)(str_start - src);


  second_half = (size_t)(src_end - str_end);

  sub_size = strlen(sub);

  total_size = (first_half + sub_size + second_half + 1);

  retval = (char*)xmalloc(total_size);
  memset(retval, 0, total_size);
  (void)strncpy(retval, src, first_half);
  (void)strncat(retval, sub, sub_size);
  (void)strncat(retval, str_end + 1, second_half);

  if (strstr(retval, str) != ((void*)0)) {




    char* tmp;
    if ((tmp = sun_strsub(retval, str, sub)) != ((void*)0)) {
      XFREE(retval);
      retval = tmp;
    }
  }
  return retval;
}
