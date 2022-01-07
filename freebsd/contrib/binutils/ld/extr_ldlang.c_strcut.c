
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void
strcut (char *haystack, char *needle)
{
  haystack = strstr (haystack, needle);

  if (haystack)
    {
      char *src;

      for (src = haystack + strlen (needle); *src;)
 *haystack++ = *src++;

      *haystack = 0;
    }
}
