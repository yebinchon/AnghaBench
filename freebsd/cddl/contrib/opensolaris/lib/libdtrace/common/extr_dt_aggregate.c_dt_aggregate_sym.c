
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int dtrace_hdl_t ;
struct TYPE_3__ {int st_value; } ;
typedef TYPE_1__ GElf_Sym ;


 scalar_t__ dtrace_lookup_by_addr (int *,int ,TYPE_1__*,int *) ;

__attribute__((used)) static void
dt_aggregate_sym(dtrace_hdl_t *dtp, uint64_t *data)
{
 GElf_Sym sym;
 uint64_t *pc = data;

 if (dtrace_lookup_by_addr(dtp, *pc, &sym, ((void*)0)) == 0)
  *pc = sym.st_value;
}
