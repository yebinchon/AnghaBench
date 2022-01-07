
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pex_obj {int count; int * status; } ;


 int memcpy (int*,int *,int) ;
 int memset (int*,int ,int) ;
 int pex_get_status_and_time (struct pex_obj*,int ,char const**,int*) ;

int
pex_get_status (struct pex_obj *obj, int count, int *vector)
{
  if (obj->status == ((void*)0))
    {
      const char *errmsg;
      int err;

      if (!pex_get_status_and_time (obj, 0, &errmsg, &err))
 return 0;
    }

  if (count > obj->count)
    {
      memset (vector + obj->count, 0, (count - obj->count) * sizeof (int));
      count = obj->count;
    }

  memcpy (vector, obj->status, count * sizeof (int));

  return 1;
}
