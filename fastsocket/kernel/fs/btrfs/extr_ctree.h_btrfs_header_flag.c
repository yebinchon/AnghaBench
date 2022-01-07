
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int dummy; } ;


 int btrfs_header_flags (struct extent_buffer*) ;

__attribute__((used)) static inline int btrfs_header_flag(struct extent_buffer *eb, u64 flag)
{
 return (btrfs_header_flags(eb) & flag) == flag;
}
