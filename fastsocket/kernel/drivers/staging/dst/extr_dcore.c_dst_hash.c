
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int dst_hashtable_size ;
 unsigned int jhash (char*,unsigned int,int ) ;

__attribute__((used)) static inline unsigned int dst_hash(char *str, unsigned int size)
{
 return (jhash(str, size, 0) % dst_hashtable_size);
}
