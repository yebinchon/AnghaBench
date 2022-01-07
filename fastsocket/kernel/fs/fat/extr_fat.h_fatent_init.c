
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ent32_p; } ;
struct fat_entry {int * fat_inode; int ** bhs; TYPE_1__ u; scalar_t__ entry; scalar_t__ nr_bhs; } ;



__attribute__((used)) static inline void fatent_init(struct fat_entry *fatent)
{
 fatent->nr_bhs = 0;
 fatent->entry = 0;
 fatent->u.ent32_p = ((void*)0);
 fatent->bhs[0] = fatent->bhs[1] = ((void*)0);
 fatent->fat_inode = ((void*)0);
}
