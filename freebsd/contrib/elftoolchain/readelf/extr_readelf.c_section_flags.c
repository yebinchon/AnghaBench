
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct section {int flags; } ;
struct readelf {scalar_t__ ec; int options; } ;
struct TYPE_2__ {char* ln; int value; char sn; } ;


 int BUF_SZ ;
 scalar_t__ ELFCLASS32 ;
 int RE_T ;
 TYPE_1__* section_flag ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char *
section_flags(struct readelf *re, struct section *s)
{

 static char buf[256];
 int i, p, nb;

 p = 0;
 nb = re->ec == ELFCLASS32 ? 8 : 16;
 if (re->options & RE_T) {
  snprintf(buf, 256, "[%*.*jx]: ", nb, nb,
      (uintmax_t)s->flags);
  p += nb + 4;
 }
 for (i = 0; section_flag[i].ln != ((void*)0); i++) {
  if ((s->flags & section_flag[i].value) == 0)
   continue;
  if (re->options & RE_T) {
   snprintf(&buf[p], 256 - p, "%s, ",
       section_flag[i].ln);
   p += strlen(section_flag[i].ln) + 2;
  } else
   buf[p++] = section_flag[i].sn;
 }
 if (re->options & RE_T && p > nb + 4)
  p -= 2;
 buf[p] = '\0';

 return (buf);
}
