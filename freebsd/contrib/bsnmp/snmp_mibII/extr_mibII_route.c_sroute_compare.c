
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sroute {int index; } ;


 int memcmp (int ,int ,int) ;

__attribute__((used)) static int
sroute_compare(struct sroute *s1, struct sroute *s2)
{

 return (memcmp(s1->index, s2->index, 13));
}
