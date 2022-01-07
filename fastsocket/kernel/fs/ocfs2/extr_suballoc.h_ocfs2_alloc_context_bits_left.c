
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_alloc_context {int ac_bits_wanted; int ac_bits_given; } ;



__attribute__((used)) static inline int ocfs2_alloc_context_bits_left(struct ocfs2_alloc_context *ac)
{
 return ac->ac_bits_wanted - ac->ac_bits_given;
}
