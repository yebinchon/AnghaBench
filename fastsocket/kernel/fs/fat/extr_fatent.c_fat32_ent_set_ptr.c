
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ent32_p; } ;
struct fat_entry {TYPE_2__** bhs; TYPE_1__ u; } ;
typedef int __le32 ;
struct TYPE_4__ {scalar_t__ b_data; } ;


 int WARN_ON (int) ;

__attribute__((used)) static void fat32_ent_set_ptr(struct fat_entry *fatent, int offset)
{
 WARN_ON(offset & (4 - 1));
 fatent->u.ent32_p = (__le32 *)(fatent->bhs[0]->b_data + offset);
}
