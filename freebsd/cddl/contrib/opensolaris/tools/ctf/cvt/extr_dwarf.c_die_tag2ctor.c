
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dc_tag; int * dc_create; } ;
typedef TYPE_1__ die_creator_t ;
typedef scalar_t__ Dwarf_Half ;


 TYPE_1__* die_creators ;

__attribute__((used)) static const die_creator_t *
die_tag2ctor(Dwarf_Half tag)
{
 const die_creator_t *dc;

 for (dc = die_creators; dc->dc_create != ((void*)0); dc++) {
  if (dc->dc_tag == tag)
   return (dc);
 }

 return (((void*)0));
}
