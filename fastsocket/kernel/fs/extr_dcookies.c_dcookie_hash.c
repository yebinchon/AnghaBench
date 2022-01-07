
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long L1_CACHE_SHIFT ;
 int hash_size ;

__attribute__((used)) static size_t dcookie_hash(unsigned long dcookie)
{
 return (dcookie >> L1_CACHE_SHIFT) & (hash_size - 1);
}
