
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rm_so; int rm_eo; } ;
typedef TYPE_1__ regmatch_t ;


 int ERR ;
 int REALLOC (char*,int ,int,int ) ;
 char* rbuf ;
 int rbufsz ;
 char* rhbuf ;
 int rhbufi ;

int
apply_subst_template(const char *boln, regmatch_t *rm, int off, int re_nsub)
{
 int j = 0;
 int k = 0;
 int n;
 char *sub = rhbuf;

 for (; sub - rhbuf < rhbufi; sub++)
  if (*sub == '&') {
   j = rm[0].rm_so;
   k = rm[0].rm_eo;
   REALLOC(rbuf, rbufsz, off + k - j, ERR);
   while (j < k)
    rbuf[off++] = boln[j++];
  } else if (*sub == '\\' && '1' <= *++sub && *sub <= '9' &&
      (n = *sub - '0') <= re_nsub) {
   j = rm[n].rm_so;
   k = rm[n].rm_eo;
   REALLOC(rbuf, rbufsz, off + k - j, ERR);
   while (j < k)
    rbuf[off++] = boln[j++];
  } else {
   REALLOC(rbuf, rbufsz, off + 1, ERR);
   rbuf[off++] = *sub;
  }
 REALLOC(rbuf, rbufsz, off + 1, ERR);
 rbuf[off] = '\0';
 return off;
}
