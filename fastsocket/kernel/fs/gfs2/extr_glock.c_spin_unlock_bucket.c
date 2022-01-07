
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_bl_head {int dummy; } ;


 int __bit_spin_unlock (int ,unsigned long*) ;
 struct hlist_bl_head* gl_hash_table ;

__attribute__((used)) static inline void spin_unlock_bucket(unsigned int hash)
{
 struct hlist_bl_head *bl = &gl_hash_table[hash];
 __bit_spin_unlock(0, (unsigned long *)bl);
}
