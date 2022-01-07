
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTR ;


 int memcpy (int ,int const,size_t) ;
 int xcalloc (int,size_t) ;

PTR
xmemdup (const PTR input, size_t copy_size, size_t alloc_size)
{
  PTR output = xcalloc (1, alloc_size);
  return (PTR) memcpy (output, input, copy_size);
}
