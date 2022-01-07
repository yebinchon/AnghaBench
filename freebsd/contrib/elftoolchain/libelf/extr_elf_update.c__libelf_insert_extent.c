
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
struct _Elf_Extent_List {int dummy; } ;
struct _Elf_Extent {int ex_type; void* ex_desc; void* ex_size; void* ex_start; } ;


 int ELF_EXTENT_EHDR ;
 int ELF_EXTENT_SHDR ;
 int LAYOUT ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int RESOURCE ;
 int SLIST_INSERT_AFTER (struct _Elf_Extent*,struct _Elf_Extent*,int ) ;
 int SLIST_INSERT_HEAD (struct _Elf_Extent_List*,struct _Elf_Extent*,int ) ;
 int _libelf_extent_is_unused (struct _Elf_Extent_List*,void*,void*,struct _Elf_Extent**) ;
 int assert (int) ;
 int errno ;
 int ex_next ;
 struct _Elf_Extent* malloc (int) ;

__attribute__((used)) static int
_libelf_insert_extent(struct _Elf_Extent_List *extents, int type,
    uint64_t start, uint64_t size, void *desc)
{
 struct _Elf_Extent *ex, *prevt;

 assert(type >= ELF_EXTENT_EHDR && type <= ELF_EXTENT_SHDR);

 prevt = ((void*)0);





 if (!_libelf_extent_is_unused(extents, start, size, &prevt)) {
  LIBELF_SET_ERROR(LAYOUT, 0);
  return (0);
 }


 if ((ex = malloc(sizeof(struct _Elf_Extent))) == ((void*)0)) {
  LIBELF_SET_ERROR(RESOURCE, errno);
  return (0);
 }
 ex->ex_start = start;
 ex->ex_size = size;
 ex->ex_desc = desc;
 ex->ex_type = type;


 if (prevt)
  SLIST_INSERT_AFTER(prevt, ex, ex_next);
 else
  SLIST_INSERT_HEAD(extents, ex, ex_next);
 return (1);
}
