
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;
struct uwb_dbg_cmd_ie {int * data; } ;


 int uwb_rc_ie_rm (struct uwb_rc*,int ) ;

__attribute__((used)) static int cmd_ie_rm(struct uwb_rc *rc, struct uwb_dbg_cmd_ie *ie_to_rm)
{
 return uwb_rc_ie_rm(rc, ie_to_rm->data[0]);
}
