
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t str_size; } ;
typedef TYPE_1__ dt_strtab_t ;



size_t
dt_strtab_size(const dt_strtab_t *sp)
{
 return (sp->str_size);
}
