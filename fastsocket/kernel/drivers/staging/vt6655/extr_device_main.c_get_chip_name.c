
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int chip_id; } ;


 TYPE_1__* chip_info_table ;

__attribute__((used)) static char* get_chip_name(int chip_id) {
    int i;
    for (i=0;chip_info_table[i].name!=((void*)0);i++)
        if (chip_info_table[i].chip_id==chip_id)
            break;
    return chip_info_table[i].name;
}
