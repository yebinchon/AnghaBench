
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conf {char* c_name; } ;


 int EXIT_FAILURE ;
 int err (int ,char*) ;
 void* realloc (struct conf**,size_t) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
uniqueadd(struct conf ***listp, size_t *nlist, size_t *mlist, struct conf *c)
{
 struct conf **list = *listp;

 if (c->c_name[0] == '\0')
  return;
 for (size_t i = 0; i < *nlist; i++) {
  if (strcmp(list[i]->c_name, c->c_name) == 0)
   return;
 }
 if (*nlist == *mlist) {
  *mlist += 10;
  void *p = realloc(*listp, *mlist * sizeof(*list));
  if (p == ((void*)0))
   err(EXIT_FAILURE, "Can't allocate for rule list");
  list = *listp = p;
 }
 list[(*nlist)++] = c;
}
