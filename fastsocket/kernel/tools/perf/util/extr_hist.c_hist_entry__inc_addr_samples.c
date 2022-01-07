
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int map; int sym; } ;
struct hist_entry {TYPE_1__ ms; } ;


 int symbol__inc_addr_samples (int ,int ,int,int ) ;

int hist_entry__inc_addr_samples(struct hist_entry *he, int evidx, u64 ip)
{
 return symbol__inc_addr_samples(he->ms.sym, he->ms.map, evidx, ip);
}
