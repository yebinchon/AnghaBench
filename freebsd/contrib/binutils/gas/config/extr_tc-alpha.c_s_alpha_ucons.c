
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alpha_auto_align_on ;
 int cons (int) ;

__attribute__((used)) static void
s_alpha_ucons (int bytes)
{
  int hold = alpha_auto_align_on;
  alpha_auto_align_on = 0;
  cons (bytes);
  alpha_auto_align_on = hold;
}
