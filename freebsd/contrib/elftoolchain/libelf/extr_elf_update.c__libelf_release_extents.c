
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Elf_Extent_List {int dummy; } ;
struct _Elf_Extent {int dummy; } ;


 struct _Elf_Extent* SLIST_FIRST (struct _Elf_Extent_List*) ;
 int SLIST_REMOVE_HEAD (struct _Elf_Extent_List*,int ) ;
 int ex_next ;
 int free (struct _Elf_Extent*) ;

__attribute__((used)) static void
_libelf_release_extents(struct _Elf_Extent_List *extents)
{
 struct _Elf_Extent *ex;

 while ((ex = SLIST_FIRST(extents)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(extents, ex_next);
  free(ex);
 }
}
