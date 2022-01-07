
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct task_struct {int dummy; } ;
struct o2net_send_tracking {int dummy; } ;



__attribute__((used)) static inline void o2net_init_nst(struct o2net_send_tracking *nst, u32 msgtype,
      u32 msgkey, struct task_struct *task, u8 node)
{
}
