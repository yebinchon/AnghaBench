
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_key {int dummy; } ;
struct TYPE_2__ {int (* decrement_key ) (struct cpu_key*) ;} ;


 size_t cpu_key_k_type (struct cpu_key*) ;
 TYPE_1__** item_ops ;
 int stub1 (struct cpu_key*) ;

__attribute__((used)) static void decrement_key(struct cpu_key *key)
{

 item_ops[cpu_key_k_type(key)]->decrement_key(key);
}
