
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int seq; } ;


 int SEQ_MULTIPLIER ;

__attribute__((used)) static inline int ipc_checkid(struct kern_ipc_perm *ipcp, int uid)
{
 if (uid / SEQ_MULTIPLIER != ipcp->seq)
  return 1;
 return 0;
}
