
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_reserve_window {scalar_t__ _rsv_end; } ;


 scalar_t__ EXT2_RESERVE_WINDOW_NOT_ALLOCATED ;

__attribute__((used)) static inline int rsv_is_empty(struct ext2_reserve_window *rsv)
{

 return (rsv->_rsv_end == EXT2_RESERVE_WINDOW_NOT_ALLOCATED);
}
