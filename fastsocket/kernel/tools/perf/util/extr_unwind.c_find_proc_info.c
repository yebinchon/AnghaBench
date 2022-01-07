
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int unw_word_t ;
typedef int unw_proc_info_t ;
struct TYPE_7__ {int segbase; int table_data; int table_len; } ;
struct TYPE_8__ {TYPE_1__ rti; } ;
struct TYPE_9__ {int start_ip; TYPE_2__ u; int end_ip; int format; } ;
typedef TYPE_3__ unw_dyn_info_t ;
typedef int unw_addr_space_t ;
typedef int u64 ;
struct unwind_info {int machine; } ;
struct table_entry {int dummy; } ;
struct map {int start; int end; TYPE_4__* dso; } ;
typedef int di ;
struct TYPE_10__ {int name; } ;


 int EINVAL ;
 int UNW_INFO_FORMAT_REMOTE_TABLE ;
 int dwarf_search_unwind_table (int ,int ,TYPE_3__*,int *,int,void*) ;
 struct map* find_map (int ,struct unwind_info*) ;
 int memset (TYPE_3__*,int ,int) ;
 int pr_debug (char*,int ) ;
 scalar_t__ read_unwind_spec (TYPE_4__*,int ,int*,int*,int*) ;

__attribute__((used)) static int
find_proc_info(unw_addr_space_t as, unw_word_t ip, unw_proc_info_t *pi,
        int need_unwind_info, void *arg)
{
 struct unwind_info *ui = arg;
 struct map *map;
 unw_dyn_info_t di;
 u64 table_data, segbase, fde_count;

 map = find_map(ip, ui);
 if (!map || !map->dso)
  return -EINVAL;

 pr_debug("unwind: find_proc_info dso %s\n", map->dso->name);

 if (read_unwind_spec(map->dso, ui->machine,
        &table_data, &segbase, &fde_count))
  return -EINVAL;

 memset(&di, 0, sizeof(di));
 di.format = UNW_INFO_FORMAT_REMOTE_TABLE;
 di.start_ip = map->start;
 di.end_ip = map->end;
 di.u.rti.segbase = map->start + segbase;
 di.u.rti.table_data = map->start + table_data;
 di.u.rti.table_len = fde_count * sizeof(struct table_entry)
         / sizeof(unw_word_t);
 return dwarf_search_unwind_table(as, ip, &di, pi,
      need_unwind_info, arg);
}
