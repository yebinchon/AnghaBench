
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int frag_new (int ) ;
 int frag_now ;
 int frag_wane (int ) ;

__attribute__((used)) static void
new_frag (void)
{
  frag_wane (frag_now);
  frag_new (0);
}
