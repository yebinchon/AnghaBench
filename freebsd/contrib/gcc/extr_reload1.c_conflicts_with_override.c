
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int n_reloads ;
 scalar_t__ reg_overlap_mentioned_p (int ,scalar_t__) ;
 scalar_t__* reload_override_in ;

__attribute__((used)) static int
conflicts_with_override (rtx x)
{
  int i;
  for (i = 0; i < n_reloads; i++)
    if (reload_override_in[i]
 && reg_overlap_mentioned_p (x, reload_override_in[i]))
      return 1;
  return 0;
}
