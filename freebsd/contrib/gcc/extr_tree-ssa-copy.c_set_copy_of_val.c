
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ value; scalar_t__ mem_ref; } ;


 unsigned int SSA_NAME_VERSION (scalar_t__) ;
 scalar_t__* cached_last_copy_of ;
 TYPE_1__* copy_of ;
 scalar_t__ get_last_copy_of (scalar_t__) ;

__attribute__((used)) static inline bool
set_copy_of_val (tree dest, tree first, tree mem_ref)
{
  unsigned int dest_ver = SSA_NAME_VERSION (dest);
  tree old_first, old_last, new_last;



  old_first = copy_of[dest_ver].value;
  copy_of[dest_ver].value = first;
  copy_of[dest_ver].mem_ref = mem_ref;

  if (old_first != first)
    return 1;
  old_last = cached_last_copy_of[dest_ver];
  new_last = get_last_copy_of (dest);
  cached_last_copy_of[dest_ver] = new_last;

  return (old_last != new_last);
}
