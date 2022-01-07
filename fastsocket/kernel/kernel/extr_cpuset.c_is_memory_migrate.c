
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int flags; } ;


 int CS_MEMORY_MIGRATE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int is_memory_migrate(const struct cpuset *cs)
{
 return test_bit(CS_MEMORY_MIGRATE, &cs->flags);
}
