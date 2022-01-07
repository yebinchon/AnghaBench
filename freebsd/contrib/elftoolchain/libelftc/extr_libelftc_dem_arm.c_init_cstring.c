
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cstring {size_t size; int * buf; } ;


 int * malloc (int) ;

__attribute__((used)) static bool
init_cstring(struct cstring *s, size_t len)
{

 if (s == ((void*)0) || len <= 1)
  return (0);

 if ((s->buf = malloc(sizeof(char) * len)) == ((void*)0))
  return (0);

 s->size = len - 1;

 return (1);
}
