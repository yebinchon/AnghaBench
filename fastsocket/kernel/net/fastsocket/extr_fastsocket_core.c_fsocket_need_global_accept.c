
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int global_spawn_accept ;
 int percpu_read (int ) ;

__attribute__((used)) static inline int fsocket_need_global_accept(void)
{
 return percpu_read(global_spawn_accept) & 0x1;
}
