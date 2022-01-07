
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct section {size_t sz; size_t cap; int * buf; } ;


 int EXIT_FAILURE ;
 size_t _SEC_INIT_CAP ;
 int err (int ,char*) ;
 int * malloc (size_t) ;
 int memcpy (int *,void const*,size_t) ;
 int * realloc (int *,int) ;

__attribute__((used)) static void
append_data(struct section *s, const void *buf, size_t sz)
{
 uint8_t *p;

 if (s->buf == ((void*)0)) {
  s->sz = 0;
  s->cap = _SEC_INIT_CAP;
  if ((s->buf = malloc(s->cap)) == ((void*)0))
   err(EXIT_FAILURE, "malloc failed");
 }

 while (sz + s->sz > s->cap) {
  s->cap *= 2;
  if ((s->buf = realloc(s->buf, s->cap)) == ((void*)0))
   err(EXIT_FAILURE, "realloc failed");
 }

 p = s->buf;
 memcpy(&p[s->sz], buf, sz);
 s->sz += sz;
}
