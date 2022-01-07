
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dx_entry {int hash; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline unsigned dx_get_hash (struct dx_entry *entry)
{
 return le32_to_cpu(entry->hash);
}
