
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Stats {int dummy; } ;


 int memset (struct Stats*,int ,int) ;

__attribute__((used)) static void rtl8180_statistics_init(struct Stats *pstats)
{
 memset(pstats, 0, sizeof(struct Stats));
}
