
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_group_desc {unsigned long long bg_signature; unsigned long long bg_size; unsigned long long bg_bits; unsigned long long bg_free_bits_count; unsigned long long bg_chain; scalar_t__ bg_blkno; scalar_t__ bg_parent_dinode; scalar_t__ bg_next_group; int bg_generation; } ;


 unsigned long long le32_to_cpu (int ) ;
 int printk (char*,...) ;

__attribute__((used)) static inline void ocfs2_debug_bg(struct ocfs2_group_desc *bg)
{
 printk("Block Group:\n");
 printk("bg_signature:       %s\n", bg->bg_signature);
 printk("bg_size:            %u\n", bg->bg_size);
 printk("bg_bits:            %u\n", bg->bg_bits);
 printk("bg_free_bits_count: %u\n", bg->bg_free_bits_count);
 printk("bg_chain:           %u\n", bg->bg_chain);
 printk("bg_generation:      %u\n", le32_to_cpu(bg->bg_generation));
 printk("bg_next_group:      %llu\n",
        (unsigned long long)bg->bg_next_group);
 printk("bg_parent_dinode:   %llu\n",
        (unsigned long long)bg->bg_parent_dinode);
 printk("bg_blkno:           %llu\n",
        (unsigned long long)bg->bg_blkno);
}
