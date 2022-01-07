
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cfg_blocks_num ;

__attribute__((used)) static inline bool
cfg_blocks_empty_p (void)
{
  return (cfg_blocks_num == 0);
}
