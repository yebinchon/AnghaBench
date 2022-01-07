
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opt_info {int dummy; } ;
struct niter_desc {unsigned int niter; int noloop_assumptions; int niter_expr; scalar_t__ const_iter; scalar_t__ simple_p; } ;
struct loops {int dummy; } ;
struct TYPE_2__ {unsigned int times; } ;
struct loop {TYPE_1__ lpt_decision; } ;
typedef int sbitmap ;


 int DLTHE_FLAG_UPDATE_FREQ ;
 int DLTHE_RECORD_COPY_NUMBER ;
 int GEN_INT (unsigned int) ;
 int NULL_RTX ;
 struct opt_info* analyze_insns_in_loop (struct loop*) ;
 int apply_opt_in_copies (struct opt_info*,unsigned int,int,int) ;
 scalar_t__ dump_file ;
 int duplicate_loop_to_header_edge (struct loop*,int ,struct loops*,unsigned int,int ,int *,int *,int *,int) ;
 scalar_t__ flag_split_ivs_in_unroller ;
 int fprintf (scalar_t__,char*,unsigned int) ;
 int free (int ) ;
 int free_opt_info (struct opt_info*) ;
 int free_simple_loop_desc (struct loop*) ;
 int gcc_assert (int) ;
 struct niter_desc* get_simple_loop_desc (struct loop*) ;
 int loop_preheader_edge (struct loop*) ;
 int opt_info_start_duplication (struct opt_info*) ;
 int sbitmap_alloc (unsigned int) ;
 int sbitmap_zero (int ) ;

__attribute__((used)) static void
peel_loop_simple (struct loops *loops, struct loop *loop)
{
  sbitmap wont_exit;
  unsigned npeel = loop->lpt_decision.times;
  struct niter_desc *desc = get_simple_loop_desc (loop);
  struct opt_info *opt_info = ((void*)0);
  bool ok;

  if (flag_split_ivs_in_unroller && npeel > 1)
    opt_info = analyze_insns_in_loop (loop);

  wont_exit = sbitmap_alloc (npeel + 1);
  sbitmap_zero (wont_exit);

  opt_info_start_duplication (opt_info);

  ok = duplicate_loop_to_header_edge (loop, loop_preheader_edge (loop),
          loops, npeel, wont_exit,
          ((void*)0), ((void*)0),
          ((void*)0), DLTHE_FLAG_UPDATE_FREQ
          | (opt_info
      ? DLTHE_RECORD_COPY_NUMBER
        : 0));
  gcc_assert (ok);

  free (wont_exit);

  if (opt_info)
    {
      apply_opt_in_copies (opt_info, npeel, 0, 0);
      free_opt_info (opt_info);
    }

  if (desc->simple_p)
    {
      if (desc->const_iter)
 {
   desc->niter -= npeel;
   desc->niter_expr = GEN_INT (desc->niter);
   desc->noloop_assumptions = NULL_RTX;
 }
      else
 {




   free_simple_loop_desc (loop);
 }
    }
  if (dump_file)
    fprintf (dump_file, ";; Peeling loop %d times\n", npeel);
}
