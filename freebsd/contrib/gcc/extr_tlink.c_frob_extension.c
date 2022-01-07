
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* obstack_copy0 (int *,char const*,int) ;
 int obstack_grow (int *,char const*,int) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;
 int temporary_obstack ;

__attribute__((used)) static char *
frob_extension (const char *s, const char *ext)
{
  const char *p = strrchr (s, '/');
  if (! p)
    p = s;
  p = strrchr (p, '.');
  if (! p)
    p = s + strlen (s);

  obstack_grow (&temporary_obstack, s, p - s);
  return obstack_copy0 (&temporary_obstack, ext, strlen (ext));
}
