
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ impl; } ;
typedef TYPE_1__ br_multihash_context ;


 int memcpy (void*,scalar_t__,int) ;

__attribute__((used)) static inline void
br_multihash_copyimpl(br_multihash_context *dst,
 const br_multihash_context *src)
{
 memcpy((void *)dst->impl, src->impl, sizeof src->impl);
}
