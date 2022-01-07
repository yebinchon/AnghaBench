
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
typedef int HD_BCPIO ;


 scalar_t__ MAGIC ;
 scalar_t__ RSHRT_EXT (char*) ;
 scalar_t__ SHRT_EXT (char*) ;
 int swp_head ;

int
bcpio_id(char *blk, int size)
{
 if (size < (int)sizeof(HD_BCPIO))
  return(-1);




 if (((u_short)SHRT_EXT(blk)) == MAGIC)
  return(0);
 if (((u_short)RSHRT_EXT(blk)) == MAGIC) {
  if (!swp_head)
   ++swp_head;
  return(0);
 }
 return(-1);
}
