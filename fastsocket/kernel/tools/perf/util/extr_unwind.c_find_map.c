
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_word_t ;
struct unwind_info {int machine; int thread; } ;
struct map {int dummy; } ;
struct addr_location {struct map* map; } ;


 int MAP__FUNCTION ;
 int PERF_RECORD_MISC_USER ;
 int thread__find_addr_map (int ,int ,int ,int ,int ,struct addr_location*) ;

__attribute__((used)) static struct map *find_map(unw_word_t ip, struct unwind_info *ui)
{
 struct addr_location al;

 thread__find_addr_map(ui->thread, ui->machine, PERF_RECORD_MISC_USER,
         MAP__FUNCTION, ip, &al);
 return al.map;
}
