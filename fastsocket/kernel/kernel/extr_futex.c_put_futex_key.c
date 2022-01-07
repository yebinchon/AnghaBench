
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union futex_key {int dummy; } futex_key ;


 int drop_futex_key_refs (union futex_key*) ;

__attribute__((used)) static inline
void put_futex_key(int fshared, union futex_key *key)
{
 drop_futex_key_refs(key);
}
