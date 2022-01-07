
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dx_entry {int block; } ;


 int cpu_to_le32 (unsigned int) ;

__attribute__((used)) static inline void dx_set_block (struct dx_entry *entry, unsigned value)
{
 entry->block = cpu_to_le32(value);
}
