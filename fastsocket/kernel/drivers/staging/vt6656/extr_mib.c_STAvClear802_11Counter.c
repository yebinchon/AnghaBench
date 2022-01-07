
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDot11Counters ;
typedef int PSDot11Counters ;


 int memset (int ,int ,int) ;

void
STAvClear802_11Counter(PSDot11Counters p802_11Counter)
{

 memset(p802_11Counter, 0, sizeof(SDot11Counters));
}
