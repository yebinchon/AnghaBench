
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {unsigned int num; struct loop** parray; } ;
struct loop {int * aux; } ;
typedef int * loop_vec_info ;


 int BITMAP_ALLOC (int *) ;
 int BITMAP_FREE (int ) ;
 int LOOP_VINFO_VECTORIZABLE_P (int *) ;
 int REPORT_VECTORIZED_LOOPS ;
 int UNKNOWN_LOC ;
 int destroy_loop_vec_info (int *) ;
 int find_loop_location (struct loop*) ;
 int fprintf (int ,char*,unsigned int) ;
 int * vect_analyze_loop (struct loop*) ;
 int vect_dump ;
 int vect_loop_location ;
 unsigned int vect_loops_num ;
 scalar_t__ vect_print_dump_info (int ) ;
 int vect_set_dump_settings () ;
 int vect_transform_loop (int *,struct loops*) ;
 int vect_vnames_to_rename ;

void
vectorize_loops (struct loops *loops)
{
  unsigned int i;
  unsigned int num_vectorized_loops = 0;


  vect_set_dump_settings ();



  vect_vnames_to_rename = BITMAP_ALLOC (((void*)0));






  vect_loops_num = loops->num;
  for (i = 1; i < vect_loops_num; i++)
    {
      loop_vec_info loop_vinfo;
      struct loop *loop = loops->parray[i];

      if (!loop)
        continue;

      vect_loop_location = find_loop_location (loop);
      loop_vinfo = vect_analyze_loop (loop);
      loop->aux = loop_vinfo;

      if (!loop_vinfo || !LOOP_VINFO_VECTORIZABLE_P (loop_vinfo))
 continue;

      vect_transform_loop (loop_vinfo, loops);
      num_vectorized_loops++;
    }
  vect_loop_location = UNKNOWN_LOC;

  if (vect_print_dump_info (REPORT_VECTORIZED_LOOPS))
    fprintf (vect_dump, "vectorized %u loops in function.\n",
      num_vectorized_loops);



  BITMAP_FREE (vect_vnames_to_rename);

  for (i = 1; i < vect_loops_num; i++)
    {
      struct loop *loop = loops->parray[i];
      loop_vec_info loop_vinfo;

      if (!loop)
 continue;
      loop_vinfo = loop->aux;
      destroy_loop_vec_info (loop_vinfo);
      loop->aux = ((void*)0);
    }
}
