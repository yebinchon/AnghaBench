
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_bl_head {int dummy; } ;


 int bit_spin_lock (int ,unsigned long*) ;
 struct hlist_bl_head* gl_hash_table ;

__attribute__((used)) static inline void spin_lock_bucket(unsigned int hash)
{
 struct hlist_bl_head *bl = &gl_hash_table[hash];
 bit_spin_lock(0, (unsigned long *)bl);
}
