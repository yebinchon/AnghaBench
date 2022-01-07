
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static bool hp_blike_system(u32 subsystem_id)
{
 switch (subsystem_id) {
 case 0x103c1520:
 case 0x103c1521:
 case 0x103c1523:
 case 0x103c1524:
 case 0x103c1525:
 case 0x103c1722:
 case 0x103c1723:
 case 0x103c1724:
 case 0x103c1725:
 case 0x103c1726:
 case 0x103c1727:
 case 0x103c1728:
 case 0x103c1729:
 case 0x103c172a:
 case 0x103c172b:
 case 0x103c307e:
 case 0x103c307f:
 case 0x103c3080:
 case 0x103c3081:
 case 0x103c7007:
 case 0x103c7008:
  return 1;
 }
 return 0;
}
