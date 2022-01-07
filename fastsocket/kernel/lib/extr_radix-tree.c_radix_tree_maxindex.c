
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* height_to_maxindex ;

__attribute__((used)) static inline unsigned long radix_tree_maxindex(unsigned int height)
{
 return height_to_maxindex[height];
}
