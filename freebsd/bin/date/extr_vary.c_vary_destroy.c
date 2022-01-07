
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vary {struct vary* next; } ;


 int free (struct vary*) ;

void
vary_destroy(struct vary *v)
{
  struct vary *n;

  while (v) {
    n = v->next;
    free(v);
    v = n;
  }
}
