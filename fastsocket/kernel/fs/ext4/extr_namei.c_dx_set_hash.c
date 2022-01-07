
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dx_entry {int hash; } ;


 int cpu_to_le32 (unsigned int) ;

__attribute__((used)) static inline void dx_set_hash(struct dx_entry *entry, unsigned value)
{
 entry->hash = cpu_to_le32(value);
}
