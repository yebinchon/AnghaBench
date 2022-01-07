
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct thread {int dummy; } ;
struct machine {int dummy; } ;
struct addr_map_symbol {int map; scalar_t__ sym; int al_addr; int addr; } ;
struct addr_location {int map; scalar_t__ sym; int addr; } ;
typedef int al ;


 int MAP__FUNCTION ;
 size_t NCPUMODES ;
 int * cpumodes ;
 int memset (struct addr_location*,int ,int) ;
 int thread__find_addr_location (struct thread*,struct machine*,int ,int ,int ,struct addr_location*,int *) ;

__attribute__((used)) static void ip__resolve_ams(struct machine *self, struct thread *thread,
       struct addr_map_symbol *ams,
       u64 ip)
{
 struct addr_location al;
 size_t i;
 u8 m;

 memset(&al, 0, sizeof(al));

 for (i = 0; i < NCPUMODES; i++) {
  m = cpumodes[i];







  thread__find_addr_location(thread, self, m, MAP__FUNCTION,
    ip, &al, ((void*)0));
  if (al.sym)
   goto found;
 }
found:
 ams->addr = ip;
 ams->al_addr = al.addr;
 ams->sym = al.sym;
 ams->map = al.map;
}
