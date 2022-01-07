
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TARGET_FOUR_JUMP_LIMIT ;
 scalar_t__ TARGET_PAD_RETURNS ;
 int ix86_avoid_jump_misspredicts () ;
 int ix86_pad_returns () ;
 scalar_t__ optimize ;
 int optimize_size ;

__attribute__((used)) static void
ix86_reorg (void)
{
  if (TARGET_PAD_RETURNS && optimize && !optimize_size)
    ix86_pad_returns ();
  if (TARGET_FOUR_JUMP_LIMIT && optimize && !optimize_size)
    ix86_avoid_jump_misspredicts ();
}
