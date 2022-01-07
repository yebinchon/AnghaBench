
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t alloc_type ;


 int BYTES_PER_ALLOC_BIT ;
 int alloc_ffs (size_t) ;

__attribute__((used)) static inline size_t
zone_object_size_1 (alloc_type *alloc_bits,
      size_t start_word, size_t start_bit,
      size_t max_size)
{
  size_t size;
  alloc_type alloc_word;
  int indx;


  alloc_word = alloc_bits[start_word++];



  if (start_bit)
    {
      indx = alloc_ffs (alloc_word >> start_bit);
      if (indx)



 return indx * BYTES_PER_ALLOC_BIT;


      size = (sizeof (alloc_type) * 8 - start_bit + 1) * BYTES_PER_ALLOC_BIT;

      if (size >= max_size)
 return max_size;

      alloc_word = alloc_bits[start_word++];
    }
  else
    size = BYTES_PER_ALLOC_BIT;

  while (alloc_word == 0)
    {
      size += sizeof (alloc_type) * 8 * BYTES_PER_ALLOC_BIT;
      if (size >= max_size)
 return max_size;
      alloc_word = alloc_bits[start_word++];
    }

  indx = alloc_ffs (alloc_word);
  return size + (indx - 1) * BYTES_PER_ALLOC_BIT;
}
