
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbitmap ;
typedef int rtx ;
typedef int basic_block ;


 int BLOCK_FOR_INSN (int ) ;
 scalar_t__ INSN_UID (int ) ;
 int LABEL_P (int ) ;
 int cached_make_edge (int ,int ,int ,int) ;
 int gcc_assert (int ) ;

__attribute__((used)) static void
make_label_edge (sbitmap edge_cache, basic_block src, rtx label, int flags)
{
  gcc_assert (LABEL_P (label));






  if (INSN_UID (label) == 0)
    return;

  cached_make_edge (edge_cache, src, BLOCK_FOR_INSN (label), flags);
}
