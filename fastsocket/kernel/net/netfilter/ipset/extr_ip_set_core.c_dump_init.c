
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int dummy; } ;
struct netlink_callback {scalar_t__* args; int skb; } ;
typedef scalar_t__ ip_set_id_t ;


 scalar_t__ DUMP_ALL ;
 scalar_t__ DUMP_ONE ;
 int ENOENT ;
 int IPSET_ATTR_CMD_MAX ;
 size_t IPSET_ATTR_SETNAME ;
 scalar_t__ IPSET_INVALID_ID ;
 int NLMSG_SPACE (int) ;
 scalar_t__ find_set_id (int ) ;
 int ip_set_setname_policy ;
 int nla_data (struct nlattr*) ;
 int nla_parse (struct nlattr**,int ,struct nlattr*,scalar_t__,int ) ;
 struct nlmsghdr* nlmsg_hdr (int ) ;

__attribute__((used)) static int
dump_init(struct netlink_callback *cb)
{
 struct nlmsghdr *nlh = nlmsg_hdr(cb->skb);
 int min_len = NLMSG_SPACE(sizeof(struct nfgenmsg));
 struct nlattr *cda[IPSET_ATTR_CMD_MAX+1];
 struct nlattr *attr = (void *)nlh + min_len;
 ip_set_id_t index;


 nla_parse(cda, IPSET_ATTR_CMD_MAX,
    attr, nlh->nlmsg_len - min_len, ip_set_setname_policy);






 if (!cda[IPSET_ATTR_SETNAME]) {
  cb->args[0] = DUMP_ALL;
  return 0;
 }

 index = find_set_id(nla_data(cda[IPSET_ATTR_SETNAME]));
 if (index == IPSET_INVALID_ID)
  return -ENOENT;

 cb->args[0] = DUMP_ONE;
 cb->args[1] = index;
 return 0;
}
