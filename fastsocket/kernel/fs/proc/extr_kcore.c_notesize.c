
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memelfnote {scalar_t__ datasz; int name; } ;
struct elf_note {int dummy; } ;


 scalar_t__ roundup (scalar_t__,int) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int notesize(struct memelfnote *en)
{
 int sz;

 sz = sizeof(struct elf_note);
 sz += roundup((strlen(en->name) + 1), 4);
 sz += roundup(en->datasz, 4);

 return sz;
}
