
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int * chan; } ;
struct mesh_setup {int beacon_interval; int dtim_period; int auto_open_plinks; TYPE_1__ chandef; scalar_t__ user_mpm; int mcast_rate; scalar_t__ mesh_id_len; int mesh_id; } ;
struct mesh_config {int beacon_interval; int dtim_period; int auto_open_plinks; TYPE_1__ chandef; scalar_t__ user_mpm; int mcast_rate; scalar_t__ mesh_id_len; int mesh_id; } ;
struct genl_info {scalar_t__* attrs; struct net_device** user_ptr; } ;
typedef struct net_device cfg80211_registered_device ;
typedef int setup ;
typedef int cfg ;


 int EINVAL ;
 size_t NL80211_ATTR_BEACON_INTERVAL ;
 size_t NL80211_ATTR_DTIM_PERIOD ;
 size_t NL80211_ATTR_MCAST_RATE ;
 size_t NL80211_ATTR_MESH_CONFIG ;
 size_t NL80211_ATTR_MESH_ID ;
 size_t NL80211_ATTR_MESH_SETUP ;
 size_t NL80211_ATTR_WIPHY_FREQ ;
 int cfg80211_join_mesh (struct net_device*,struct net_device*,struct mesh_setup*,struct mesh_setup*) ;
 int default_mesh_config ;
 int default_mesh_setup ;
 int memcpy (struct mesh_setup*,int *,int) ;
 int nl80211_parse_chandef (struct net_device*,struct genl_info*,TYPE_1__*) ;
 int nl80211_parse_mcast_rate (struct net_device*,int ,void*) ;
 int nl80211_parse_mesh_config (struct genl_info*,struct mesh_setup*,int *) ;
 int nl80211_parse_mesh_setup (struct genl_info*,struct mesh_setup*) ;
 int nla_data (scalar_t__) ;
 void* nla_get_u32 (scalar_t__) ;
 scalar_t__ nla_len (scalar_t__) ;

__attribute__((used)) static int nl80211_join_mesh(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 struct mesh_config cfg;
 struct mesh_setup setup;
 int err;


 memcpy(&cfg, &default_mesh_config, sizeof(cfg));
 memcpy(&setup, &default_mesh_setup, sizeof(setup));

 if (info->attrs[NL80211_ATTR_MESH_CONFIG]) {

  err = nl80211_parse_mesh_config(info, &cfg, ((void*)0));
  if (err)
   return err;
 }

 if (!info->attrs[NL80211_ATTR_MESH_ID] ||
     !nla_len(info->attrs[NL80211_ATTR_MESH_ID]))
  return -EINVAL;

 setup.mesh_id = nla_data(info->attrs[NL80211_ATTR_MESH_ID]);
 setup.mesh_id_len = nla_len(info->attrs[NL80211_ATTR_MESH_ID]);

 if (info->attrs[NL80211_ATTR_MCAST_RATE] &&
     !nl80211_parse_mcast_rate(rdev, setup.mcast_rate,
       nla_get_u32(info->attrs[NL80211_ATTR_MCAST_RATE])))
   return -EINVAL;

 if (info->attrs[NL80211_ATTR_BEACON_INTERVAL]) {
  setup.beacon_interval =
   nla_get_u32(info->attrs[NL80211_ATTR_BEACON_INTERVAL]);
  if (setup.beacon_interval < 10 ||
      setup.beacon_interval > 10000)
   return -EINVAL;
 }

 if (info->attrs[NL80211_ATTR_DTIM_PERIOD]) {
  setup.dtim_period =
   nla_get_u32(info->attrs[NL80211_ATTR_DTIM_PERIOD]);
  if (setup.dtim_period < 1 || setup.dtim_period > 100)
   return -EINVAL;
 }

 if (info->attrs[NL80211_ATTR_MESH_SETUP]) {

  err = nl80211_parse_mesh_setup(info, &setup);
  if (err)
   return err;
 }

 if (setup.user_mpm)
  cfg.auto_open_plinks = 0;

 if (info->attrs[NL80211_ATTR_WIPHY_FREQ]) {
  err = nl80211_parse_chandef(rdev, info, &setup.chandef);
  if (err)
   return err;
 } else {

  setup.chandef.chan = ((void*)0);
 }

 return cfg80211_join_mesh(rdev, dev, &setup, &cfg);
}
