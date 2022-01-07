
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int FDT_END_NODE ;
 int bin_emit_cell (void*,int ) ;

__attribute__((used)) static void bin_emit_endnode(void *e, struct label *labels)
{
 bin_emit_cell(e, FDT_END_NODE);
}
