
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int k_objectid; } ;
struct cpu_key {TYPE_1__ on_disk_key; } ;
typedef int loff_t ;


 int TYPE_ANY ;
 int set_cpu_key_k_offset (struct cpu_key*,int ) ;
 int set_cpu_key_k_type (struct cpu_key*,int ) ;

__attribute__((used)) static void sd_decrement_key(struct cpu_key *key)
{
 key->on_disk_key.k_objectid--;
 set_cpu_key_k_type(key, TYPE_ANY);
 set_cpu_key_k_offset(key, (loff_t)(~0ULL >> 1));
}
