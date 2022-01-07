
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef int __be16 ;


 scalar_t__ ARPHRD_IEEE802_TR ;
 int ETH_P_802_2 ;
 int ETH_P_TR_802_2 ;
 int htons (int ) ;

__attribute__((used)) static inline __be16 llc_proto_type(u16 arphrd)
{
 return arphrd == ARPHRD_IEEE802_TR ?
    htons(ETH_P_TR_802_2) : htons(ETH_P_802_2);
}
