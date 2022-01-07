
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int symbol_filter_t ;
struct thread {int dummy; } ;
struct machine {int dummy; } ;
struct addr_location {int * sym; int addr; int * map; } ;
typedef enum map_type { ____Placeholder_map_type } map_type ;


 int * map__find_symbol (int *,int ,int ) ;
 int thread__find_addr_map (struct thread*,struct machine*,int ,int,int ,struct addr_location*) ;

void thread__find_addr_location(struct thread *thread, struct machine *machine,
    u8 cpumode, enum map_type type, u64 addr,
    struct addr_location *al,
    symbol_filter_t filter)
{
 thread__find_addr_map(thread, machine, cpumode, type, addr, al);
 if (al->map != ((void*)0))
  al->sym = map__find_symbol(al->map, al->addr, filter);
 else
  al->sym = ((void*)0);
}
