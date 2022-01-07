
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rt_genid; } ;
struct net {TYPE_1__ ipv4; } ;
typedef int shuffle ;


 int atomic_add (unsigned char,int *) ;
 int get_random_bytes (unsigned char*,int) ;

__attribute__((used)) static void rt_cache_invalidate(struct net *net)
{
 unsigned char shuffle;

 get_random_bytes(&shuffle, sizeof(shuffle));
 atomic_add(shuffle + 1U, &net->ipv4.rt_genid);
}
