
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct tipc_genlmsghdr {int cmd; int dest; } ;
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; } ;
struct genl_info {struct tipc_genlmsghdr* userhdr; struct nlmsghdr* nlhdr; } ;
struct TYPE_2__ {int pid; } ;


 int CAP_NET_ADMIN ;
 scalar_t__ GENL_HDRLEN ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 scalar_t__ NLMSG_DATA (struct nlmsghdr*) ;
 int NLMSG_PAYLOAD (struct nlmsghdr*,scalar_t__) ;
 int NLMSG_SPACE (scalar_t__) ;
 int TIPC_CMD_NOT_NET_ADMIN ;
 scalar_t__ TIPC_GENL_HDRLEN ;
 int capable (int ) ;
 int genlmsg_unicast (int *,struct sk_buff*,int ) ;
 int init_net ;
 int memcpy (struct nlmsghdr*,struct nlmsghdr*,int) ;
 struct nlmsghdr* nlmsg_hdr (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int) ;
 struct sk_buff* tipc_cfg_do_cmd (int ,int,scalar_t__,int ,int) ;

__attribute__((used)) static int handle_cmd(struct sk_buff *skb, struct genl_info *info)
{
 struct sk_buff *rep_buf;
 struct nlmsghdr *rep_nlh;
 struct nlmsghdr *req_nlh = info->nlhdr;
 struct tipc_genlmsghdr *req_userhdr = info->userhdr;
 int hdr_space = NLMSG_SPACE(GENL_HDRLEN + TIPC_GENL_HDRLEN);
 u16 cmd;

 if ((req_userhdr->cmd & 0xC000) && (!capable(CAP_NET_ADMIN)))
  cmd = TIPC_CMD_NOT_NET_ADMIN;
 else
  cmd = req_userhdr->cmd;

 rep_buf = tipc_cfg_do_cmd(req_userhdr->dest, cmd,
   NLMSG_DATA(req_nlh) + GENL_HDRLEN + TIPC_GENL_HDRLEN,
   NLMSG_PAYLOAD(req_nlh, GENL_HDRLEN + TIPC_GENL_HDRLEN),
   hdr_space);

 if (rep_buf) {
  skb_push(rep_buf, hdr_space);
  rep_nlh = nlmsg_hdr(rep_buf);
  memcpy(rep_nlh, req_nlh, hdr_space);
  rep_nlh->nlmsg_len = rep_buf->len;
  genlmsg_unicast(&init_net, rep_buf, NETLINK_CB(skb).pid);
 }

 return 0;
}
