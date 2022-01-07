
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar_obj {struct ar_obj* name; scalar_t__ elf; } ;


 int elf_end (scalar_t__) ;
 int free (struct ar_obj*) ;

__attribute__((used)) static void
free_obj(struct ar_obj *obj)
{
 if (obj->elf)
  elf_end(obj->elf);

 free(obj->name);
 free(obj);
}
