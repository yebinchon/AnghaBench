
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dx_entry {int block; } ;
typedef int ext4_lblk_t ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline ext4_lblk_t dx_get_block(struct dx_entry *entry)
{
 return le32_to_cpu(entry->block) & 0x00ffffff;
}
