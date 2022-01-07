
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; int fn; } ;
struct probe_arg {int comm; int name; TYPE_1__ fetch; } ;


 scalar_t__ CHECK_FETCH_FUNCS (int ,int ) ;
 int bitfield ;
 int deref ;
 int free_bitfield_fetch_param (int ) ;
 int free_deref_fetch_param (int ) ;
 int free_symbol_cache (int ) ;
 int kfree (int ) ;
 int symbol ;

__attribute__((used)) static void free_probe_arg(struct probe_arg *arg)
{
 if (CHECK_FETCH_FUNCS(bitfield, arg->fetch.fn))
  free_bitfield_fetch_param(arg->fetch.data);
 else if (CHECK_FETCH_FUNCS(deref, arg->fetch.fn))
  free_deref_fetch_param(arg->fetch.data);
 else if (CHECK_FETCH_FUNCS(symbol, arg->fetch.fn))
  free_symbol_cache(arg->fetch.data);
 kfree(arg->name);
 kfree(arg->comm);
}
