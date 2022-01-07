
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tipc_cfg_msg_hdr {int tcm_type; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_7__ {TYPE_4__ name; } ;
struct TYPE_6__ {TYPE_3__ name; } ;
struct sockaddr_tipc {TYPE_2__ addr; } ;
struct msghdr {TYPE_1__* msg_iov; } ;
typedef int hdr ;
struct TYPE_5__ {int iov_base; } ;


 int CAP_NET_ADMIN ;
 int EACCES ;
 int EFAULT ;
 scalar_t__ TIPC_CFG_SRV ;
 scalar_t__ TIPC_RESERVED_TYPES ;
 scalar_t__ TIPC_TOP_SRV ;
 int capable (int ) ;
 scalar_t__ copy_from_user (struct tipc_cfg_msg_hdr*,int ,int) ;
 scalar_t__ likely (int) ;
 int ntohs (int ) ;

__attribute__((used)) static int dest_name_check(struct sockaddr_tipc *dest, struct msghdr *m)
{
 struct tipc_cfg_msg_hdr hdr;

 if (likely(dest->addr.name.name.type >= TIPC_RESERVED_TYPES))
  return 0;
 if (likely(dest->addr.name.name.type == TIPC_TOP_SRV))
  return 0;
 if (likely(dest->addr.name.name.type != TIPC_CFG_SRV))
  return -EACCES;

 if (copy_from_user(&hdr, m->msg_iov[0].iov_base, sizeof(hdr)))
  return -EFAULT;
 if ((ntohs(hdr.tcm_type) & 0xC000) && (!capable(CAP_NET_ADMIN)))
  return -EACCES;

 return 0;
}
