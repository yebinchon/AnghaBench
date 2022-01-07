
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p; } ;
typedef TYPE_1__ string ;


 int memcpy (int,char const*,int) ;
 int string_need (TYPE_1__*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void
string_append (string *p, const char *s)
{
  int n;
  if (s == ((void*)0) || *s == '\0')
    return;
  n = strlen (s);
  string_need (p, n);
  memcpy (p->p, s, n);
  p->p += n;
}
