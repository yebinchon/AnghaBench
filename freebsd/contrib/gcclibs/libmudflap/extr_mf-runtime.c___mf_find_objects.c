
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __mf_object_t ;


 int __MF_TYPE_GUESS ;
 int __MF_TYPE_NOACCESS ;
 unsigned int __mf_find_objects2 (uintptr_t,uintptr_t,int **,unsigned int,int) ;

unsigned
__mf_find_objects (uintptr_t ptr_low, uintptr_t ptr_high,
                   __mf_object_t **objs, unsigned max_objs)
{
  int type;
  unsigned count = 0;


  for (type = __MF_TYPE_NOACCESS; type <= __MF_TYPE_GUESS; type++)
    {
      unsigned c = __mf_find_objects2 (ptr_low, ptr_high, objs, max_objs, type);
      if (c > max_objs)
        {
          max_objs = 0;
          objs = ((void*)0);
        }
      else
        {
          max_objs -= c;
          objs += c;
        }
      count += c;
    }

  return count;
}
