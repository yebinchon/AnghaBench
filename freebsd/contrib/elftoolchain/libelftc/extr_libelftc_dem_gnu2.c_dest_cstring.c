
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cstring {scalar_t__ size; int * buf; } ;


 int free (int *) ;

__attribute__((used)) static void
dest_cstring(struct cstring *s)
{

 if (s == ((void*)0))
  return;

 free(s->buf);
 s->buf = ((void*)0);
 s->size = 0;
}
