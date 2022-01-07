
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int align_frag ;
 int frag_now ;
 int s_align_bytes (int) ;

__attribute__((used)) static void
dot_align (int arg)
{

  align_frag = frag_now;
  s_align_bytes (arg);
}
