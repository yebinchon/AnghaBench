
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tdesc_t ;
struct TYPE_3__ {int dw_tidhash; } ;
typedef TYPE_1__ dwarf_t ;


 int hash_add (int ,int *) ;

__attribute__((used)) static void
tdesc_add(dwarf_t *dw, tdesc_t *tdp)
{
 hash_add(dw->dw_tidhash, tdp);
}
