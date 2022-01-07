
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ string; } ;
struct sec_merge_hash_entry {scalar_t__ len; TYPE_1__ root; } ;


 scalar_t__ memcmp (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline int
is_suffix (const struct sec_merge_hash_entry *A,
    const struct sec_merge_hash_entry *B)
{
  if (A->len <= B->len)


    return 0;

  return memcmp (A->root.string + (A->len - B->len),
   B->root.string, B->len) == 0;
}
