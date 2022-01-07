
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iov_iter {int dummy; } ;


 int iov_iter_single_seg_count (struct iov_iter const*) ;
 size_t min (int ,size_t) ;

__attribute__((used)) static inline size_t fuse_get_frag_size(const struct iov_iter *ii,
     size_t max_size)
{
 return min(iov_iter_single_seg_count(ii), max_size);
}
