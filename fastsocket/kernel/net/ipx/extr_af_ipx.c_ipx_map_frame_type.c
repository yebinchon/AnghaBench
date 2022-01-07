
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be16 ;


 int ETH_P_802_2 ;
 int ETH_P_802_3 ;
 int ETH_P_IPX ;
 int ETH_P_SNAP ;




 int htons (int ) ;

__attribute__((used)) static __be16 ipx_map_frame_type(unsigned char type)
{
 __be16 rc = 0;

 switch (type) {
 case 129: rc = htons(ETH_P_IPX); break;
 case 131: rc = htons(ETH_P_802_2); break;
 case 128: rc = htons(ETH_P_SNAP); break;
 case 130: rc = htons(ETH_P_802_3); break;
 }

 return rc;
}
