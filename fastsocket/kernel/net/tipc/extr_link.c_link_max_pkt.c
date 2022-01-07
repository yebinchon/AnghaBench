
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct link {int max_pkt; } ;



__attribute__((used)) static u32 link_max_pkt(struct link *l_ptr)
{
 return l_ptr->max_pkt;
}
