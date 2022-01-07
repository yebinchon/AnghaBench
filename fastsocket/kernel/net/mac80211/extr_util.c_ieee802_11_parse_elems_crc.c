
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct ieee802_11_elems {size_t const* ie_start; size_t total_len; int parse_error; size_t const* ssid; size_t ssid_len; size_t const* supp_rates; size_t supp_rates_len; size_t const* ds_params; size_t tim_len; size_t const* challenge; size_t challenge_len; size_t const* wmm_info; size_t wmm_info_len; size_t const* wmm_param; size_t wmm_param_len; size_t const* rsn; size_t rsn_len; size_t const* erp_info; size_t const* ext_supp_rates; size_t ext_supp_rates_len; size_t const* opmode_notif; size_t const* mesh_id; size_t mesh_id_len; size_t const* peering; size_t peering_len; size_t const* preq; size_t preq_len; size_t const* prep; size_t prep_len; size_t const* perr; size_t perr_len; size_t const* country_elem; size_t country_elem_len; size_t const* pwr_constr_elem; void* timeout_int; void* wide_bw_chansw_ie; void* sec_chan_offs; void* ext_chansw_ie; void* ch_switch_ie; void* rann; void* awake_window; void* mesh_config; void* vht_operation; void* vht_cap_elem; void* ht_operation; void* ht_cap_elem; void* tim; } ;
struct ieee80211_vht_operation {int dummy; } ;
struct ieee80211_vht_cap {int dummy; } ;
struct ieee80211_timeout_interval_ie {int dummy; } ;
struct ieee80211_tim_ie {int dummy; } ;
struct ieee80211_sec_chan_offs_ie {int dummy; } ;
struct ieee80211_rann_ie {int dummy; } ;
struct ieee80211_meshconf_ie {int dummy; } ;
struct ieee80211_ht_operation {int dummy; } ;
struct ieee80211_ht_cap {int dummy; } ;
struct ieee80211_ext_chansw_ie {int dummy; } ;
struct ieee80211_channel_sw_ie {int dummy; } ;


 int DECLARE_BITMAP (int ,int) ;
 int __set_bit (size_t,int ) ;
 int bitmap_zero (int ,int) ;
 size_t* cfg80211_find_ie (int const,size_t const*,size_t) ;
 int crc32_be (int ,size_t const*,size_t) ;
 int memset (struct ieee802_11_elems*,int ,int) ;
 int seen_elems ;
 int test_bit (size_t,int ) ;

u32 ieee802_11_parse_elems_crc(const u8 *start, size_t len, bool action,
          struct ieee802_11_elems *elems,
          u64 filter, u32 crc)
{
 size_t left = len;
 const u8 *pos = start;
 bool calc_crc = filter != 0;
 DECLARE_BITMAP(seen_elems, 256);
 const u8 *ie;

 bitmap_zero(seen_elems, 256);
 memset(elems, 0, sizeof(*elems));
 elems->ie_start = start;
 elems->total_len = len;

 while (left >= 2) {
  u8 id, elen;
  bool elem_parse_failed;

  id = *pos++;
  elen = *pos++;
  left -= 2;

  if (elen > left) {
   elems->parse_error = 1;
   break;
  }

  switch (id) {
  case 135:
  case 134:
  case 151:
  case 155:
  case 160:
  case 133:
  case 148:
  case 159:
  case 137:
  case 154:
  case 152:
  case 150:
  case 149:
  case 130:
  case 129:
  case 145:
  case 146:
  case 143:
  case 140:
  case 141:
  case 142:
  case 138:
  case 158:
  case 153:
  case 156:
  case 139:
  case 132:
  case 136:
  case 128:




   if (test_bit(id, seen_elems)) {
    elems->parse_error = 1;
    left -= elen;
    pos += elen;
    continue;
   }
   break;
  }

  if (calc_crc && id < 64 && (filter & (1ULL << id)))
   crc = crc32_be(crc, pos - 2, elen + 2);

  elem_parse_failed = 0;

  switch (id) {
  case 135:
   elems->ssid = pos;
   elems->ssid_len = elen;
   break;
  case 134:
   elems->supp_rates = pos;
   elems->supp_rates_len = elen;
   break;
  case 155:
   if (elen >= 1)
    elems->ds_params = pos;
   else
    elem_parse_failed = 1;
   break;
  case 133:
   if (elen >= sizeof(struct ieee80211_tim_ie)) {
    elems->tim = (void *)pos;
    elems->tim_len = elen;
   } else
    elem_parse_failed = 1;
   break;
  case 159:
   elems->challenge = pos;
   elems->challenge_len = elen;
   break;
  case 131:
   if (elen >= 4 && pos[0] == 0x00 && pos[1] == 0x50 &&
       pos[2] == 0xf2) {


    if (calc_crc)
     crc = crc32_be(crc, pos - 2, elen + 2);

    if (elen >= 5 && pos[3] == 2) {

     if (pos[4] == 0) {
      elems->wmm_info = pos;
      elems->wmm_info_len = elen;
     } else if (pos[4] == 1) {
      elems->wmm_param = pos;
      elems->wmm_param_len = elen;
     }
    }
   }
   break;
  case 137:
   elems->rsn = pos;
   elems->rsn_len = elen;
   break;
  case 154:
   if (elen >= 1)
    elems->erp_info = pos;
   else
    elem_parse_failed = 1;
   break;
  case 152:
   elems->ext_supp_rates = pos;
   elems->ext_supp_rates_len = elen;
   break;
  case 150:
   if (elen >= sizeof(struct ieee80211_ht_cap))
    elems->ht_cap_elem = (void *)pos;
   else
    elem_parse_failed = 1;
   break;
  case 149:
   if (elen >= sizeof(struct ieee80211_ht_operation))
    elems->ht_operation = (void *)pos;
   else
    elem_parse_failed = 1;
   break;
  case 130:
   if (elen >= sizeof(struct ieee80211_vht_cap))
    elems->vht_cap_elem = (void *)pos;
   else
    elem_parse_failed = 1;
   break;
  case 129:
   if (elen >= sizeof(struct ieee80211_vht_operation))
    elems->vht_operation = (void *)pos;
   else
    elem_parse_failed = 1;
   break;
  case 144:
   if (elen > 0)
    elems->opmode_notif = pos;
   else
    elem_parse_failed = 1;
   break;
  case 145:
   elems->mesh_id = pos;
   elems->mesh_id_len = elen;
   break;
  case 146:
   if (elen >= sizeof(struct ieee80211_meshconf_ie))
    elems->mesh_config = (void *)pos;
   else
    elem_parse_failed = 1;
   break;
  case 143:
   elems->peering = pos;
   elems->peering_len = elen;
   break;
  case 147:
   if (elen >= 2)
    elems->awake_window = (void *)pos;
   break;
  case 140:
   elems->preq = pos;
   elems->preq_len = elen;
   break;
  case 141:
   elems->prep = pos;
   elems->prep_len = elen;
   break;
  case 142:
   elems->perr = pos;
   elems->perr_len = elen;
   break;
  case 138:
   if (elen >= sizeof(struct ieee80211_rann_ie))
    elems->rann = (void *)pos;
   else
    elem_parse_failed = 1;
   break;
  case 158:
   if (elen != sizeof(struct ieee80211_channel_sw_ie)) {
    elem_parse_failed = 1;
    break;
   }
   elems->ch_switch_ie = (void *)pos;
   break;
  case 153:
   if (elen != sizeof(struct ieee80211_ext_chansw_ie)) {
    elem_parse_failed = 1;
    break;
   }
   elems->ext_chansw_ie = (void *)pos;
   break;
  case 136:
   if (elen != sizeof(struct ieee80211_sec_chan_offs_ie)) {
    elem_parse_failed = 1;
    break;
   }
   elems->sec_chan_offs = (void *)pos;
   break;
  case 128:
   if (!action ||
       elen != sizeof(*elems->wide_bw_chansw_ie)) {
    elem_parse_failed = 1;
    break;
   }
   elems->wide_bw_chansw_ie = (void *)pos;
   break;
  case 157:
   if (action) {
    elem_parse_failed = 1;
    break;
   }





   ie = cfg80211_find_ie(128,
           pos, elen);
   if (ie) {
    if (ie[1] == sizeof(*elems->wide_bw_chansw_ie))
     elems->wide_bw_chansw_ie =
      (void *)(ie + 2);
    else
     elem_parse_failed = 1;
   }
   break;
  case 156:
   elems->country_elem = pos;
   elems->country_elem_len = elen;
   break;
  case 139:
   if (elen != 1) {
    elem_parse_failed = 1;
    break;
   }
   elems->pwr_constr_elem = pos;
   break;
  case 132:
   if (elen >= sizeof(struct ieee80211_timeout_interval_ie))
    elems->timeout_int = (void *)pos;
   else
    elem_parse_failed = 1;
   break;
  default:
   break;
  }

  if (elem_parse_failed)
   elems->parse_error = 1;
  else
   __set_bit(id, seen_elems);

  left -= elen;
  pos += elen;
 }

 if (left != 0)
  elems->parse_error = 1;

 return crc;
}
