
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long net_random () ;

unsigned long neigh_rand_reach_time(unsigned long base)
{
 return (base ? (net_random() % base) + (base >> 1) : 0);
}
