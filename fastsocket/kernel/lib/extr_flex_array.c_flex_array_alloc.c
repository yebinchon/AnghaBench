
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flex_array {int element_size; unsigned int total_nr_elements; int * parts; } ;
typedef int gfp_t ;


 int FLEX_ARRAY_BASE_BYTES_LEFT ;
 int FLEX_ARRAY_ELEMENTS_PER_PART (int) ;
 int FLEX_ARRAY_FREE ;
 int FLEX_ARRAY_NR_BASE_PTRS ;
 int __GFP_ZERO ;
 scalar_t__ elements_fit_in_base (struct flex_array*) ;
 struct flex_array* kzalloc (int,int) ;
 int memset (int *,int ,int ) ;

struct flex_array *flex_array_alloc(int element_size, unsigned int total,
     gfp_t flags)
{
 struct flex_array *ret;
 int max_size = FLEX_ARRAY_NR_BASE_PTRS *
    FLEX_ARRAY_ELEMENTS_PER_PART(element_size);


 if (total > max_size)
  return ((void*)0);
 ret = kzalloc(sizeof(struct flex_array), flags);
 if (!ret)
  return ((void*)0);
 ret->element_size = element_size;
 ret->total_nr_elements = total;
 if (elements_fit_in_base(ret) && !(flags & __GFP_ZERO))
  memset(&ret->parts[0], FLEX_ARRAY_FREE,
      FLEX_ARRAY_BASE_BYTES_LEFT);
 return ret;
}
