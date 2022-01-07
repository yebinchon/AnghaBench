
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITMAP_FREE (int ) ;
 int seen_in_block ;
 int seen_in_insn ;

__attribute__((used)) static void
df_unset_seen (void)
{
  BITMAP_FREE (seen_in_block);
  BITMAP_FREE (seen_in_insn);
}
