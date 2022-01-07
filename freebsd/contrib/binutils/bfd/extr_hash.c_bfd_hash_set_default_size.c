
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_size_type ;


 int ARRAY_SIZE (int const*) ;
 int bfd_default_hash_table_size ;

void
bfd_hash_set_default_size (bfd_size_type hash_size)
{

  static const bfd_size_type hash_size_primes[] =
    {
      251, 509, 1021, 2039, 4051, 8599, 16699, 32749
    };
  size_t index;


  for (index = 0; index < ARRAY_SIZE (hash_size_primes) - 1; ++index)
    if (hash_size <= hash_size_primes[index])
      break;

  bfd_default_hash_table_size = hash_size_primes[index];
}
