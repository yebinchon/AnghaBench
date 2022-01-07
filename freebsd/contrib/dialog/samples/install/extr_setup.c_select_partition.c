
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; char* name; int blocks; } ;


 scalar_t__ Linux ;
 int MAX_PARTS ;
 int dialog_clear () ;
 int dialog_menu (char const*,char const*,int,int,int,int,char**) ;
 int num_partition ;
 TYPE_1__* partitions ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int
select_partition(const char *title, const char *prompt, int y, int x)
{
    int i, num, ret;
    char info[MAX_PARTS][40];
    char *items[MAX_PARTS * 2];
    int num_pa[MAX_PARTS];

    num = 0;
    for (i = 0; i < num_partition; i++) {
 if (partitions[i].type == Linux) {
     items[num * 2] = partitions[i].name;
     sprintf(info[num], "Linux partition with %d blocks",
      partitions[i].blocks);
     items[num * 2 + 1] = info[num];
     num_pa[num] = i;
     num++;
 }
    }
    ret = dialog_menu(title, prompt, y + num, x, num, num, items);
    dialog_clear();
    if (ret >= 0)
 ret = num_pa[ret];
    return ret;
}
