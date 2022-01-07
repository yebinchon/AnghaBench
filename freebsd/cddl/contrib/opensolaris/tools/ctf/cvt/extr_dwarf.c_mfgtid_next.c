
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tid_t ;
struct TYPE_3__ {int dw_mfgtid_last; } ;
typedef TYPE_1__ dwarf_t ;



__attribute__((used)) static tid_t
mfgtid_next(dwarf_t *dw)
{
 return (++dw->dw_mfgtid_last);
}
