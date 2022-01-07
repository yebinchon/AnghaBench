
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (unsigned long const*) ;
 unsigned long const gas_hash_table_size ;

__attribute__((used)) static unsigned long
get_gas_hash_table_size (void)
{

  static const unsigned long hash_size_primes[] =
    {
      1021, 4051, 8599, 16699, 65537
    };
  unsigned int index;




  for (index = 0; index < ARRAY_SIZE (hash_size_primes) - 1; ++index)
    if (gas_hash_table_size <= hash_size_primes[index])
      break;

  return hash_size_primes[index];
}
