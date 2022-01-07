
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u64 ;
struct adapter {unsigned char mcastmask; } ;


 unsigned char slic_mcast_get_mac_hash (char*) ;

__attribute__((used)) static void slic_mcast_set_bit(struct adapter *adapter, char *address)
{
 unsigned char crcpoly;


 crcpoly = slic_mcast_get_mac_hash(address);




 crcpoly &= 0x3F;


 adapter->mcastmask |= (u64) 1 << crcpoly;
}
