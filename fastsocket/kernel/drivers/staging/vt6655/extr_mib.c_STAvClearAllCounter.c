
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SStatCounter ;
typedef int PSStatCounter ;


 int memset (int ,int ,int) ;

void STAvClearAllCounter (PSStatCounter pStatistic)
{

 memset(pStatistic, 0, sizeof(SStatCounter));
}
