
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* BITMAP_ALLOC (int *) ;
 void* seen_in_block ;
 void* seen_in_insn ;

__attribute__((used)) static void
df_set_seen (void)
{
  seen_in_block = BITMAP_ALLOC (((void*)0));
  seen_in_insn = BITMAP_ALLOC (((void*)0));
}
