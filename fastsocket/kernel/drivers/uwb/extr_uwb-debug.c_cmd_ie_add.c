
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;
struct uwb_ie_hdr {int dummy; } ;
struct uwb_dbg_cmd_ie {int len; scalar_t__ data; } ;


 int uwb_rc_ie_add (struct uwb_rc*,struct uwb_ie_hdr const*,int ) ;

__attribute__((used)) static int cmd_ie_add(struct uwb_rc *rc, struct uwb_dbg_cmd_ie *ie_to_add)
{
 return uwb_rc_ie_add(rc,
        (const struct uwb_ie_hdr *) ie_to_add->data,
        ie_to_add->len);
}
