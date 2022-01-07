
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static int
was_hotkey(int this_key, int *used_keys, size_t next)
{
    int result = FALSE;

    if (next != 0) {
 size_t n;
 for (n = 0; n < next; ++n) {
     if (used_keys[n] == this_key) {
  result = TRUE;
  break;
     }
 }
    }
    return result;
}
