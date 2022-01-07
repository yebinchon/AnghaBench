
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter {int (* filter_func ) (struct filter*) ;struct filter* next; void* extra; int * argv; scalar_t__ argc; } ;


 int _ (char*) ;
 scalar_t__ flex_alloc (int) ;
 int flexerror (int ) ;
 int memset (struct filter*,int ,int) ;

struct filter *filter_create_int (struct filter *chain,
      int (*filter_func) (struct filter *),
      void *extra)
{
 struct filter *f;


 f = (struct filter *) flex_alloc (sizeof (struct filter));
 if (!f)
  flexerror (_("flex_alloc failed in filter_create_int"));
 memset (f, 0, sizeof (*f));
 f->next = ((void*)0);
 f->argc = 0;
 f->argv = ((void*)0);

 f->filter_func = filter_func;
 f->extra = extra;

 if (chain != ((void*)0)) {

  while (chain->next)
   chain = chain->next;
  chain->next = f;
 }

 return f;
}
