
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_PROP ;
 int bin_emit_cell (void*,int ) ;

__attribute__((used)) static void bin_emit_property(void *e, const char *label)
{
 bin_emit_cell(e, FDT_PROP);
}
