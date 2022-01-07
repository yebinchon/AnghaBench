
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opt_info {int dummy; } ;
struct niter_desc {int simple_p; } ;
struct loops {int dummy; } ;
struct TYPE_2__ {unsigned int times; } ;
struct loop {TYPE_1__ lpt_decision; } ;
typedef int sbitmap ;


 int DLTHE_FLAG_UPDATE_FREQ ;
 int DLTHE_RECORD_COPY_NUMBER ;
 struct opt_info* analyze_insns_in_loop (struct loop*) ;
 int apply_opt_in_copies (struct opt_info*,unsigned int,int,int) ;
 scalar_t__ dump_file ;
 int duplicate_loop_to_header_edge (struct loop*,int ,struct loops*,unsigned int,int ,int *,int *,int *,int) ;
 scalar_t__ flag_split_ivs_in_unroller ;
 scalar_t__ flag_variable_expansion_in_unroller ;
 int fprintf (scalar_t__,char*,unsigned int,int) ;
 int free (int ) ;
 int free_opt_info (struct opt_info*) ;
 int gcc_assert (int) ;
 struct niter_desc* get_simple_loop_desc (struct loop*) ;
 int loop_latch_edge (struct loop*) ;
 int num_loop_insns (struct loop*) ;
 int opt_info_start_duplication (struct opt_info*) ;
 int sbitmap_alloc (unsigned int) ;
 int sbitmap_zero (int ) ;

__attribute__((used)) static void
unroll_loop_stupid (struct loops *loops, struct loop *loop)
{
  sbitmap wont_exit;
  unsigned nunroll = loop->lpt_decision.times;
  struct niter_desc *desc = get_simple_loop_desc (loop);
  struct opt_info *opt_info = ((void*)0);
  bool ok;

  if (flag_split_ivs_in_unroller
      || flag_variable_expansion_in_unroller)
    opt_info = analyze_insns_in_loop (loop);


  wont_exit = sbitmap_alloc (nunroll + 1);
  sbitmap_zero (wont_exit);
  opt_info_start_duplication (opt_info);

  ok = duplicate_loop_to_header_edge (loop, loop_latch_edge (loop),
          loops, nunroll, wont_exit,
          ((void*)0), ((void*)0), ((void*)0),
          DLTHE_FLAG_UPDATE_FREQ
          | (opt_info
      ? DLTHE_RECORD_COPY_NUMBER
        : 0));
  gcc_assert (ok);

  if (opt_info)
    {
      apply_opt_in_copies (opt_info, nunroll, 1, 1);
      free_opt_info (opt_info);
    }

  free (wont_exit);

  if (desc->simple_p)
    {






      desc->simple_p = 0;
    }

  if (dump_file)
    fprintf (dump_file, ";; Unrolled loop %d times, %i insns\n",
      nunroll, num_loop_insns (loop));
}
