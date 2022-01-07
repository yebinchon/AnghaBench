
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_occ {int depth; struct et_occ* next; struct et_occ* prev; struct et_occ* parent; int min; int min_occ; } ;


 int check_path_after (struct et_occ*) ;
 int et_check_sanity (struct et_occ*) ;
 int et_check_tree_sanity (struct et_occ*) ;
 int et_recomp_min (struct et_occ*) ;
 int record_path_before (struct et_occ*) ;
 int set_depth (struct et_occ*,int) ;
 int set_depth_add (struct et_occ*,int) ;
 int set_next (struct et_occ*,struct et_occ*) ;
 int set_prev (struct et_occ*,struct et_occ*) ;

__attribute__((used)) static void
et_splay (struct et_occ *occ)
{
  struct et_occ *f, *gf, *ggf;
  int occ_depth, f_depth, gf_depth;






  while (occ->parent)
    {
      occ_depth = occ->depth;

      f = occ->parent;
      f_depth = f->depth;

      gf = f->parent;

      if (!gf)
 {
   set_depth_add (occ, f_depth);
   occ->min_occ = f->min_occ;
   occ->min = f->min;

   if (f->prev == occ)
     {

       set_prev (f, occ->next);
       set_next (occ, f);
       set_depth_add (f->prev, occ_depth);
     }
   else
     {

       set_next (f, occ->prev);
       set_prev (occ, f);
       set_depth_add (f->next, occ_depth);
     }
   set_depth (f, -occ_depth);
   occ->parent = ((void*)0);

   et_recomp_min (f);




   return;
 }

      gf_depth = gf->depth;

      set_depth_add (occ, f_depth + gf_depth);
      occ->min_occ = gf->min_occ;
      occ->min = gf->min;

      ggf = gf->parent;

      if (gf->prev == f)
 {
   if (f->prev == occ)
     {

       set_prev (gf, f->next);
       set_prev (f, occ->next);
       set_next (occ, f);
       set_next (f, gf);

       set_depth (f, -occ_depth);
       set_depth_add (f->prev, occ_depth);
       set_depth (gf, -f_depth);
       set_depth_add (gf->prev, f_depth);
     }
   else
     {

       set_prev (gf, occ->next);
       set_next (f, occ->prev);
       set_prev (occ, f);
       set_next (occ, gf);

       set_depth (f, -occ_depth);
       set_depth_add (f->next, occ_depth);
       set_depth (gf, -occ_depth - f_depth);
       set_depth_add (gf->prev, occ_depth + f_depth);
     }
 }
      else
 {
   if (f->prev == occ)
     {

       set_next (gf, occ->prev);
       set_prev (f, occ->next);
       set_prev (occ, gf);
       set_next (occ, f);

       set_depth (f, -occ_depth);
       set_depth_add (f->prev, occ_depth);
       set_depth (gf, -occ_depth - f_depth);
       set_depth_add (gf->next, occ_depth + f_depth);
     }
   else
     {

       set_next (gf, f->prev);
       set_next (f, occ->prev);
       set_prev (occ, f);
       set_prev (f, gf);

       set_depth (f, -occ_depth);
       set_depth_add (f->next, occ_depth);
       set_depth (gf, -f_depth);
       set_depth_add (gf->next, f_depth);
     }
 }

      occ->parent = ggf;
      if (ggf)
 {
   if (ggf->prev == gf)
     ggf->prev = occ;
   else
     ggf->next = occ;
 }

      et_recomp_min (gf);
      et_recomp_min (f);



    }





}
