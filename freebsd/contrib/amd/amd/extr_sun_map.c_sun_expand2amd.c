
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMD_ARCH ;
 int AMD_HOST ;
 int AMD_OSNAME ;
 int AMD_OSVER ;
 int SUN_ARCH ;
 int SUN_CPU ;
 int SUN_HOST ;
 int SUN_NATISA ;
 int SUN_OSNAME ;
 int SUN_OSREL ;
 int SUN_OSVERS ;
 int XFREE (char*) ;
 char* sun_strsub (char*,int ,int ) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static char *
sun_expand2amd(const char *str)
{

  char *retval = ((void*)0), *tmp = ((void*)0), *tmp2 = ((void*)0);
  const char *pos;
  tmp = xstrdup(str);
  for (pos = str; *pos != '\0'; pos++) {
    if (*pos != '$') {
      continue;
    }
    if (tmp2 != ((void*)0)) {
      XFREE(tmp);
      tmp = tmp2;
    }







    if ((tmp2 = sun_strsub(tmp, SUN_ARCH, AMD_ARCH)) != ((void*)0)) {
      continue;
    }

    if ((tmp2 = sun_strsub(tmp, SUN_CPU, AMD_ARCH)) != ((void*)0)) {
      continue;
    }

    if ((tmp2 = sun_strsub(tmp, SUN_HOST, AMD_HOST)) != ((void*)0)) {
      continue;
    }

    if ((tmp2 = sun_strsub(tmp, SUN_OSNAME, AMD_OSNAME)) != ((void*)0)) {
      continue;
    }




    if ((tmp2 = sun_strsub(tmp, SUN_OSREL, AMD_OSVER)) != ((void*)0)) {
      continue;
    }

    if ((tmp2 = sun_strsub(tmp, SUN_OSVERS, AMD_OSVER)) != ((void*)0)) {
      continue;
    }

    if ((tmp2 = sun_strsub(tmp, SUN_NATISA, AMD_ARCH)) != ((void*)0)) {
      continue;
    }
  }
  if (tmp2 == ((void*)0)) {
    retval = tmp;
  }
  else {
    retval = tmp2;
    XFREE(tmp);
  }

  return retval;
}
