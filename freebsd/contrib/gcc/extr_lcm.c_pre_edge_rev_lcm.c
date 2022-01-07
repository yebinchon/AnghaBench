
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edge_list {int dummy; } ;
typedef int sbitmap ;


 int NUM_EDGES (struct edge_list*) ;
 int compute_antinout_edge (int *,int *,int *,int *) ;
 int compute_available (int *,int *,int *,int *) ;
 int compute_farthest (struct edge_list*,int,int *,int *,int *,int *,int *) ;
 int compute_nearerout (struct edge_list*,int *,int *,int *,int *) ;
 int compute_rev_insert_delete (struct edge_list*,int *,int *,int *,int *,int *) ;
 struct edge_list* create_edge_list () ;
 scalar_t__ dump_file ;
 int dump_sbitmap_vector (scalar_t__,char*,char*,int *,int) ;
 int fprintf (scalar_t__,char*) ;
 int last_basic_block ;
 int print_edge_list (scalar_t__,struct edge_list*) ;
 int * sbitmap_vector_alloc (int,int) ;
 int sbitmap_vector_free (int *) ;
 int sbitmap_vector_zero (int *,int) ;
 int verify_edge_list (scalar_t__,struct edge_list*) ;

struct edge_list *
pre_edge_rev_lcm (int n_exprs, sbitmap *transp,
    sbitmap *st_avloc, sbitmap *st_antloc, sbitmap *kill,
    sbitmap **insert, sbitmap **delete)
{
  sbitmap *st_antin, *st_antout;
  sbitmap *st_avout, *st_avin, *farthest;
  sbitmap *nearer, *nearerout;
  struct edge_list *edge_list;
  int num_edges;

  edge_list = create_edge_list ();
  num_edges = NUM_EDGES (edge_list);

  st_antin = sbitmap_vector_alloc (last_basic_block, n_exprs);
  st_antout = sbitmap_vector_alloc (last_basic_block, n_exprs);
  sbitmap_vector_zero (st_antin, last_basic_block);
  sbitmap_vector_zero (st_antout, last_basic_block);
  compute_antinout_edge (st_antloc, transp, st_antin, st_antout);


  st_avout = sbitmap_vector_alloc (last_basic_block, n_exprs);
  st_avin = sbitmap_vector_alloc (last_basic_block, n_exprs);
  compute_available (st_avloc, kill, st_avout, st_avin);
  farthest = sbitmap_vector_alloc (num_edges, n_exprs);
  compute_farthest (edge_list, n_exprs, st_avout, st_avin, st_antin,
      kill, farthest);






  sbitmap_vector_free (st_antin);
  sbitmap_vector_free (st_antout);

  sbitmap_vector_free (st_avin);
  sbitmap_vector_free (st_avout);

  nearer = sbitmap_vector_alloc (num_edges, n_exprs);


  nearerout = sbitmap_vector_alloc (last_basic_block + 1, n_exprs);
  compute_nearerout (edge_list, farthest, st_avloc, nearer, nearerout);
  sbitmap_vector_free (farthest);

  *insert = sbitmap_vector_alloc (num_edges, n_exprs);
  *delete = sbitmap_vector_alloc (last_basic_block, n_exprs);
  compute_rev_insert_delete (edge_list, st_avloc, nearer, nearerout,
        *insert, *delete);

  sbitmap_vector_free (nearerout);
  sbitmap_vector_free (nearer);
  return edge_list;
}
