
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ COLLATION_RULE ;


 scalar_t__ COLLATION_BINARY ;
 scalar_t__ COLLATION_NTOFS_ULONG ;
 int le32_to_cpu (scalar_t__) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool ntfs_is_collation_rule_supported(COLLATION_RULE cr) {
 int i;






 if (unlikely(cr != COLLATION_BINARY && cr != COLLATION_NTOFS_ULONG))
  return 0;
 i = le32_to_cpu(cr);
 if (likely(((i >= 0) && (i <= 0x02)) ||
   ((i >= 0x10) && (i <= 0x13))))
  return 1;
 return 0;
}
