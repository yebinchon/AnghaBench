
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct version_info {int dummy; } ;
struct fdt_reserve_entry {int member_1; int member_0; } ;
struct reserve_info {struct fdt_reserve_entry re; struct reserve_info* next; } ;
struct data {int dummy; } ;


 struct data data_append_re (struct data,struct fdt_reserve_entry*) ;
 struct data empty_data ;
 int reservenum ;

__attribute__((used)) static struct data flatten_reserve_list(struct reserve_info *reservelist,
     struct version_info *vi)
{
 struct reserve_info *re;
 struct data d = empty_data;
 static struct fdt_reserve_entry null_re = {0,0};
 int j;

 for (re = reservelist; re; re = re->next) {
  d = data_append_re(d, &re->re);
 }



 for (j = 0; j < reservenum; j++) {
  d = data_append_re(d, &null_re);
 }

 return d;
}
