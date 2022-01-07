
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 size_t PFN_ALIGN (size_t) ;

__attribute__((used)) static inline size_t pcpu_calc_fc_sizes(size_t static_size,
     size_t reserved_size,
     ssize_t *dyn_sizep)
{
 size_t size_sum;

 size_sum = PFN_ALIGN(static_size + reserved_size +
        (*dyn_sizep >= 0 ? *dyn_sizep : 0));
 if (*dyn_sizep != 0)
  *dyn_sizep = size_sum - static_size - reserved_size;

 return size_sum;
}
