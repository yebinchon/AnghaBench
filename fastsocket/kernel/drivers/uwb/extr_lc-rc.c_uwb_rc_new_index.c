
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uwb_rc_find_by_index (int) ;

__attribute__((used)) static int uwb_rc_new_index(void)
{
 int index = 0;

 for (;;) {
  if (!uwb_rc_find_by_index(index))
   return index;
  if (++index < 0)
   index = 0;
 }
}
