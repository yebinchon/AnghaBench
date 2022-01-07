
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dso {int dummy; } ;


 int VDSO__MAP_NAME ;
 struct dso* dso__new (int ) ;
 int dso__set_long_name (struct dso*,char*) ;
 int dsos__add (struct list_head*,struct dso*) ;
 struct dso* dsos__find (struct list_head*,int ) ;
 char* get_file () ;

struct dso *vdso__dso_findnew(struct list_head *head)
{
 struct dso *dso = dsos__find(head, VDSO__MAP_NAME);

 if (!dso) {
  char *file;

  file = get_file();
  if (!file)
   return ((void*)0);

  dso = dso__new(VDSO__MAP_NAME);
  if (dso != ((void*)0)) {
   dsos__add(head, dso);
   dso__set_long_name(dso, file);
  }
 }

 return dso;
}
