
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_bucket {int dummy; } ;


 unsigned long ODEBUG_CHUNK_SHIFT ;
 int ODEBUG_HASH_BITS ;
 unsigned long hash_long (unsigned long,int ) ;
 struct debug_bucket* obj_hash ;

__attribute__((used)) static struct debug_bucket *get_bucket(unsigned long addr)
{
 unsigned long hash;

 hash = hash_long((addr >> ODEBUG_CHUNK_SHIFT), ODEBUG_HASH_BITS);
 return &obj_hash[hash];
}
