
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int get_pcd(unsigned int pixclock, unsigned int cpuclock)
{
 unsigned int pcd = cpuclock / 100;

 pcd *= pixclock;
 pcd /= 10000000;

 return pcd + 1;
}
