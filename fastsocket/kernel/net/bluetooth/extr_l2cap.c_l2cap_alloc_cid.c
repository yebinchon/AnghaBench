
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct l2cap_chan_list {int dummy; } ;


 scalar_t__ L2CAP_CID_DYN_END ;
 scalar_t__ L2CAP_CID_DYN_START ;
 int __l2cap_get_chan_by_scid (struct l2cap_chan_list*,scalar_t__) ;

__attribute__((used)) static u16 l2cap_alloc_cid(struct l2cap_chan_list *l)
{
 u16 cid = L2CAP_CID_DYN_START;

 for (; cid < L2CAP_CID_DYN_END; cid++) {
  if (!__l2cap_get_chan_by_scid(l, cid))
   return cid;
 }

 return 0;
}
