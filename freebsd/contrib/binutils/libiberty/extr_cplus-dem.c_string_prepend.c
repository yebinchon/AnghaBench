
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string ;


 int string_prependn (int *,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void
string_prepend (string *p, const char *s)
{
  if (s != ((void*)0) && *s != '\0')
    {
      string_prependn (p, s, strlen (s));
    }
}
