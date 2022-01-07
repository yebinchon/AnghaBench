
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loadedfile {size_t len; char* buf; scalar_t__ used; } ;


 scalar_t__ TRUE ;

__attribute__((used)) static char *
loadedfile_nextbuf(void *x, size_t *len)
{
 struct loadedfile *lf = x;

 if (lf->used) {
  return ((void*)0);
 }
 lf->used = TRUE;
 *len = lf->len;
 return lf->buf;
}
