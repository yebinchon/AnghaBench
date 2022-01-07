
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct coff_section {char* name; int code; int data; int address; int size; int number; int nrelocs; TYPE_2__* relocs; } ;
struct TYPE_4__ {int offset; int addend; TYPE_1__* symbol; } ;
struct TYPE_3__ {char* name; } ;


 int nl () ;
 int printf (char*,...) ;
 int tab (int) ;

__attribute__((used)) static void
dump_coff_section (struct coff_section *ptr)
{
  int i;

  tab (1);
  printf ("section %s %d %d address %x size %x number %d nrelocs %d",
   ptr->name, ptr->code, ptr->data, ptr->address,ptr->size,
   ptr->number, ptr->nrelocs);
  nl ();

  for (i = 0; i < ptr->nrelocs; i++)
    {
      tab (0);
      printf ("(%x %s %x)",
       ptr->relocs[i].offset,
       ptr->relocs[i].symbol->name,
       ptr->relocs[i].addend);
      nl ();
    }

  tab (-1);
}
