
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wimax_dev {TYPE_1__* net_dev; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
typedef enum wimax_st { ____Placeholder_wimax_st } wimax_st ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {int ifindex; } ;


 int ENOMEM ;
 struct sk_buff* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int WIMAX_GNL_RE_STATE_CHANGE ;
 int WIMAX_GNL_STCH_IFIDX ;
 int WIMAX_GNL_STCH_STATE_NEW ;
 int WIMAX_GNL_STCH_STATE_OLD ;
 int d_fnend (int,struct device*,char*,struct wimax_dev*,int,int,int) ;
 int d_fnstart (int,struct device*,char*,struct wimax_dev*,int,int) ;
 int dev_err (struct device*,char*,...) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nla_put_u8 (struct sk_buff*,int ,int) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 struct device* wimax_dev_to_dev (struct wimax_dev*) ;
 int wimax_gnl_family ;
 TYPE_2__ wimax_gnl_mcg ;

__attribute__((used)) static
struct sk_buff *wimax_gnl_re_state_change_alloc(
 struct wimax_dev *wimax_dev,
 enum wimax_st new_state, enum wimax_st old_state,
 void **header)
{
 int result;
 struct device *dev = wimax_dev_to_dev(wimax_dev);
 void *data;
 struct sk_buff *report_skb;

 d_fnstart(3, dev, "(wimax_dev %p new_state %u old_state %u)\n",
    wimax_dev, new_state, old_state);
 result = -ENOMEM;
 report_skb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (report_skb == ((void*)0)) {
  dev_err(dev, "RE_STCH: can't create message\n");
  goto error_new;
 }
 data = genlmsg_put(report_skb, 0, wimax_gnl_mcg.id, &wimax_gnl_family,
      0, WIMAX_GNL_RE_STATE_CHANGE);
 if (data == ((void*)0)) {
  dev_err(dev, "RE_STCH: can't put data into message\n");
  goto error_put;
 }
 *header = data;

 result = nla_put_u8(report_skb, WIMAX_GNL_STCH_STATE_OLD, old_state);
 if (result < 0) {
  dev_err(dev, "RE_STCH: Error adding OLD attr: %d\n", result);
  goto error_put;
 }
 result = nla_put_u8(report_skb, WIMAX_GNL_STCH_STATE_NEW, new_state);
 if (result < 0) {
  dev_err(dev, "RE_STCH: Error adding NEW attr: %d\n", result);
  goto error_put;
 }
 result = nla_put_u32(report_skb, WIMAX_GNL_STCH_IFIDX,
        wimax_dev->net_dev->ifindex);
 if (result < 0) {
  dev_err(dev, "RE_STCH: Error adding IFINDEX attribute\n");
  goto error_put;
 }
 d_fnend(3, dev, "(wimax_dev %p new_state %u old_state %u) = %p\n",
  wimax_dev, new_state, old_state, report_skb);
 return report_skb;

error_put:
 nlmsg_free(report_skb);
error_new:
 d_fnend(3, dev, "(wimax_dev %p new_state %u old_state %u) = %d\n",
  wimax_dev, new_state, old_state, result);
 return ERR_PTR(result);
}
