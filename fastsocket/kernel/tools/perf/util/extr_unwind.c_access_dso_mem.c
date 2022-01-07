
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ unw_word_t ;
typedef int u8 ;
struct unwind_info {int machine; int thread; } ;
struct addr_location {TYPE_1__* map; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dso; } ;


 int MAP__FUNCTION ;
 int PERF_RECORD_MISC_USER ;
 int dso__data_read_addr (int ,TYPE_1__*,int ,scalar_t__,int *,int) ;
 int pr_debug (char*,unsigned long) ;
 int thread__find_addr_map (int ,int ,int ,int ,scalar_t__,struct addr_location*) ;

__attribute__((used)) static int access_dso_mem(struct unwind_info *ui, unw_word_t addr,
     unw_word_t *data)
{
 struct addr_location al;
 ssize_t size;

 thread__find_addr_map(ui->thread, ui->machine, PERF_RECORD_MISC_USER,
         MAP__FUNCTION, addr, &al);
 if (!al.map) {
  pr_debug("unwind: no map for %lx\n", (unsigned long)addr);
  return -1;
 }

 if (!al.map->dso)
  return -1;

 size = dso__data_read_addr(al.map->dso, al.map, ui->machine,
       addr, (u8 *) data, sizeof(*data));

 return !(size == sizeof(*data));
}
