
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t num_free_objects; unsigned long* in_use_p; } ;
typedef TYPE_1__ page_entry ;


 int BITMAP_SIZE (size_t) ;
 unsigned int CEIL (int ,int) ;
 int OBJECTS_IN_PAGE (TYPE_1__*) ;
 int gcc_assert (int) ;
 unsigned long* save_in_use_p (TYPE_1__*) ;

__attribute__((used)) static void
ggc_recalculate_in_use_p (page_entry *p)
{
  unsigned int i;
  size_t num_objects;



  num_objects = OBJECTS_IN_PAGE (p) + 1;


  p->num_free_objects = num_objects;


  for (i = 0;
       i < CEIL (BITMAP_SIZE (num_objects),
   sizeof (*p->in_use_p));
       ++i)
    {
      unsigned long j;



      p->in_use_p[i] |= save_in_use_p (p)[i];


      for (j = p->in_use_p[i]; j; j >>= 1)
 p->num_free_objects -= (j & 1);
    }

  gcc_assert (p->num_free_objects < num_objects);
}
