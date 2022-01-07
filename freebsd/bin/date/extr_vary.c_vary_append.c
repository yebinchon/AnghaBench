
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vary {char* arg; struct vary* next; } ;


 int err (int,char*) ;
 scalar_t__ malloc (int) ;

struct vary *
vary_append(struct vary *v, char *arg)
{
  struct vary *result, **nextp;

  if (v) {
    result = v;
    while (v->next)
      v = v->next;
    nextp = &v->next;
  } else
    nextp = &result;

  if ((*nextp = (struct vary *)malloc(sizeof(struct vary))) == ((void*)0))
    err(1, "malloc");
  (*nextp)->arg = arg;
  (*nextp)->next = ((void*)0);
  return result;
}
