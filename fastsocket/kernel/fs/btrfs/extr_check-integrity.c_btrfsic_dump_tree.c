
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfsic_state {int latest_superblock; } ;


 int btrfsic_dump_tree_sub (struct btrfsic_state const*,int ,int ) ;

__attribute__((used)) static void btrfsic_dump_tree(const struct btrfsic_state *state)
{
 btrfsic_dump_tree_sub(state, state->latest_superblock, 0);
}
