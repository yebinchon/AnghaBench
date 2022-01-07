
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct loop {unsigned int num_nodes; } ;
typedef int bitmap ;
typedef TYPE_1__* basic_block ;
struct TYPE_5__ {int index; } ;


 int BITMAP_ALLOC (int *) ;
 int BITMAP_FREE (int ) ;
 int DF_EQUIV_NOTES ;
 int DF_HARD_REGS ;
 int DF_UD_CHAIN ;
 int bitmap_set_bit (int ,int ) ;
 int biv_eq ;
 int biv_hash ;
 int bivs ;
 int clear_iv_info () ;
 struct loop* current_loop ;
 int * df ;
 int df_analyze (int *) ;
 int df_chain_add_problem (int *,int ) ;
 int * df_init (int) ;
 int df_set_blocks (int *,int ) ;
 int free (TYPE_1__**) ;
 TYPE_1__** get_loop_body_in_dom_order (struct loop*) ;
 int htab_create (int,int ,int ,int (*) (TYPE_1__**)) ;

void
iv_analysis_loop_init (struct loop *loop)
{
  basic_block *body = get_loop_body_in_dom_order (loop), bb;
  bitmap blocks = BITMAP_ALLOC (((void*)0));
  unsigned i;
  bool first_time = (df == ((void*)0));

  current_loop = loop;


  if (first_time)
    {
      df = df_init (DF_HARD_REGS | DF_EQUIV_NOTES);
      df_chain_add_problem (df, DF_UD_CHAIN);
      bivs = htab_create (10, biv_hash, biv_eq, free);
    }
  else
    clear_iv_info ();

  for (i = 0; i < loop->num_nodes; i++)
    {
      bb = body[i];
      bitmap_set_bit (blocks, bb->index);
    }
  df_set_blocks (df, blocks);
  df_analyze (df);
  BITMAP_FREE (blocks);
  free (body);
}
