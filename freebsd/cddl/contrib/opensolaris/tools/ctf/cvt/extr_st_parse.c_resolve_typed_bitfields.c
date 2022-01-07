
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int list_iter (int ,int ,int *) ;
 int resolve_typed_bitfields_cb ;
 int typedbitfldmems ;

void
resolve_typed_bitfields(void)
{
 (void) list_iter(typedbitfldmems,
     resolve_typed_bitfields_cb, ((void*)0));
}
