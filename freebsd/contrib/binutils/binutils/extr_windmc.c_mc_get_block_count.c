
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ rc_uint_type ;
struct TYPE_3__ {scalar_t__ vid; } ;
typedef TYPE_1__ mc_node_lang ;



__attribute__((used)) static int
mc_get_block_count (mc_node_lang **nl, int elems)
{
  rc_uint_type exid;
  int i, ret;

  if (! nl)
    return 0;
  i = 0;
  ret = 0;
  while (i < elems)
    {
      ret++;
      exid = nl[i++]->vid;
      while (i < elems && nl[i]->vid == exid + 1)
 exid = nl[i++]->vid;
    }
  return ret;
}
