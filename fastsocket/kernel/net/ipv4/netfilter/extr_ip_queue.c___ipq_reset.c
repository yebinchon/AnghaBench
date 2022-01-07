
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPQ_COPY_NONE ;
 int __ipq_flush (int *,int ) ;
 int __ipq_set_mode (int ,int ) ;
 int net_disable_timestamp () ;
 scalar_t__ peer_pid ;

__attribute__((used)) static inline void
__ipq_reset(void)
{
 peer_pid = 0;
 net_disable_timestamp();
 __ipq_set_mode(IPQ_COPY_NONE, 0);
 __ipq_flush(((void*)0), 0);
}
