
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int k_offset; } ;
struct TYPE_4__ {TYPE_1__ k_offset_v1; } ;
struct reiserfs_key {TYPE_2__ u; } ;


 scalar_t__ DOT_OFFSET ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int direntry_is_left_mergeable(struct reiserfs_key *key,
          unsigned long bsize)
{
 if (le32_to_cpu(key->u.k_offset_v1.k_offset) == DOT_OFFSET)
  return 0;
 return 1;

}
