
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ctf_alloc (scalar_t__) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

char *
ctf_strdup(const char *s1)
{
 char *s2 = ctf_alloc(strlen(s1) + 1);

 if (s2 != ((void*)0))
  (void) strcpy(s2, s1);

 return (s2);
}
