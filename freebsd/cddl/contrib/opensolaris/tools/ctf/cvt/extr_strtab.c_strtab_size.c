
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t str_size; } ;
typedef TYPE_1__ strtab_t ;



size_t
strtab_size(const strtab_t *sp)
{
 return (sp->str_size);
}
