
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int frag_more (int) ;
 int md_number_to_chars (int ,int,int) ;

__attribute__((used)) static inline void
out_four (int data)
{
  md_number_to_chars (frag_more (4), data, 4);
}
