
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pex_time {int dummy; } ;
struct pex_obj {int count; int * time; int * status; } ;


 int memcpy (struct pex_time*,int *,int) ;
 int memset (struct pex_time*,int ,int) ;
 int pex_get_status_and_time (struct pex_obj*,int ,char const**,int*) ;

int
pex_get_times (struct pex_obj *obj, int count, struct pex_time *vector)
{
  if (obj->status == ((void*)0))
    {
      const char *errmsg;
      int err;

      if (!pex_get_status_and_time (obj, 0, &errmsg, &err))
 return 0;
    }

  if (obj->time == ((void*)0))
    return 0;

  if (count > obj->count)
    {
      memset (vector + obj->count, 0,
       (count - obj->count) * sizeof (struct pex_time));
      count = obj->count;
    }

  memcpy (vector, obj->time, count * sizeof (struct pex_time));

  return 1;
}
