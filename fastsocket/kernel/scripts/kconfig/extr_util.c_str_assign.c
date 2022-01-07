
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gstr {scalar_t__ len; int s; } ;


 int strdup (char const*) ;
 scalar_t__ strlen (char const*) ;

struct gstr str_assign(const char *s)
{
 struct gstr gs;
 gs.s = strdup(s);
 gs.len = strlen(s) + 1;
 return gs;
}
