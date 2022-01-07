
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dlc {int mtu; scalar_t__ tx_credits; } ;



__attribute__((used)) static inline unsigned int rfcomm_room(struct rfcomm_dlc *dlc)
{


 return dlc->mtu * (dlc->tx_credits?:1);
}
