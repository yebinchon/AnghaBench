
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opaque_t ;
typedef int key_fun ;


 int mapc_keyiter (scalar_t__,int *,int ) ;
 scalar_t__ root_map ;

int
root_keyiter(key_fun *fn, opaque_t arg)
{
  if (root_map) {
    int c = mapc_keyiter(root_map, fn, arg);
    return c;
  }

  return 0;
}
