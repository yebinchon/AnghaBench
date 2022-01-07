
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPOLL_CTL_DEL ;

__attribute__((used)) static inline int ep_op_has_event(int op)
{
 return op != EPOLL_CTL_DEL;
}
