
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ent32_p; } ;
struct fat_entry {int entry; TYPE_1__ u; } ;



__attribute__((used)) static inline void fatent_set_entry(struct fat_entry *fatent, int entry)
{
 fatent->entry = entry;
 fatent->u.ent32_p = ((void*)0);
}
