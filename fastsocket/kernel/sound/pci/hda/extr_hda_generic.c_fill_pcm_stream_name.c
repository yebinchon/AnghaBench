
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (char) ;
 char* strchr (char*,char) ;
 int strlcat (char*,char const*,size_t) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static void fill_pcm_stream_name(char *str, size_t len, const char *sfx,
     const char *chip_name)
{
 char *p;

 if (*str)
  return;
 strlcpy(str, chip_name, len);


 for (p = strchr(str, ' '); p; p = strchr(p + 1, ' ')) {
  if (!isalnum(p[1])) {
   *p = 0;
   break;
  }
 }
 strlcat(str, sfx, len);
}
