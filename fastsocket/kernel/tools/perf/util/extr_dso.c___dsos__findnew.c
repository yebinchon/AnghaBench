
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dso {int dummy; } ;


 struct dso* dso__new (char const*) ;
 int dso__set_basename (struct dso*) ;
 int dsos__add (struct list_head*,struct dso*) ;
 struct dso* dsos__find (struct list_head*,char const*) ;

struct dso *__dsos__findnew(struct list_head *head, const char *name)
{
 struct dso *dso = dsos__find(head, name);

 if (!dso) {
  dso = dso__new(name);
  if (dso != ((void*)0)) {
   dsos__add(head, dso);
   dso__set_basename(dso);
  }
 }

 return dso;
}
