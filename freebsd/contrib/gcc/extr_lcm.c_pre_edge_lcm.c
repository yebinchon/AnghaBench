
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edge_list {int dummy; } ;
typedef int sbitmap ;


 int NUM_EDGES (struct edge_list*) ;
 int compute_antinout_edge (int *,int *,int *,int *) ;
 int compute_available (int *,int *,int *,int *) ;
 int compute_earliest (struct edge_list*,int,int *,int *,int *,int *,int *) ;
 int compute_insert_delete (struct edge_list*,int *,int *,int *,int *,int *) ;
 int compute_laterin (struct edge_list*,int *,int *,int *,int *) ;
 struct edge_list* create_edge_list () ;
 scalar_t__ dump_file ;
 int dump_sbitmap_vector (scalar_t__,char*,char*,int *,int) ;
 int fprintf (scalar_t__,char*) ;
 int last_basic_block ;
 int print_edge_list (scalar_t__,struct edge_list*) ;
 int * sbitmap_vector_alloc (int,int) ;
 int sbitmap_vector_free (int *) ;
 int verify_edge_list (scalar_t__,struct edge_list*) ;

struct edge_list *
pre_edge_lcm (int n_exprs, sbitmap *transp,
       sbitmap *avloc, sbitmap *antloc, sbitmap *kill,
       sbitmap **insert, sbitmap **delete)
{
  sbitmap *antin, *antout, *earliest;
  sbitmap *avin, *avout;
  sbitmap *later, *laterin;
  struct edge_list *edge_list;
  int num_edges;

  edge_list = create_edge_list ();
  num_edges = NUM_EDGES (edge_list);
  avin = sbitmap_vector_alloc (last_basic_block, n_exprs);
  avout = sbitmap_vector_alloc (last_basic_block, n_exprs);
  compute_available (avloc, kill, avout, avin);
  sbitmap_vector_free (avin);


  antin = sbitmap_vector_alloc (last_basic_block, n_exprs);
  antout = sbitmap_vector_alloc (last_basic_block, n_exprs);
  compute_antinout_edge (antloc, transp, antin, antout);
  earliest = sbitmap_vector_alloc (num_edges, n_exprs);
  compute_earliest (edge_list, n_exprs, antin, antout, avout, kill, earliest);






  sbitmap_vector_free (antout);
  sbitmap_vector_free (antin);
  sbitmap_vector_free (avout);

  later = sbitmap_vector_alloc (num_edges, n_exprs);


  laterin = sbitmap_vector_alloc (last_basic_block + 1, n_exprs);
  compute_laterin (edge_list, earliest, antloc, later, laterin);
  sbitmap_vector_free (earliest);

  *insert = sbitmap_vector_alloc (num_edges, n_exprs);
  *delete = sbitmap_vector_alloc (last_basic_block, n_exprs);
  compute_insert_delete (edge_list, antloc, later, laterin, *insert, *delete);

  sbitmap_vector_free (laterin);
  sbitmap_vector_free (later);
  return edge_list;
}
