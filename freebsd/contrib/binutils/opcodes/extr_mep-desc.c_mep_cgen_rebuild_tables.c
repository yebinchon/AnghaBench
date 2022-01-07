
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {unsigned int machs; void* default_insn_bitsize; void* base_insn_bitsize; int min_insn_bitsize; scalar_t__ max_insn_bitsize; scalar_t__ insn_chunk_bitsize; int int_insn_p; int * isas; } ;
struct TYPE_12__ {void* default_insn_bitsize; void* base_insn_bitsize; int min_insn_bitsize; scalar_t__ max_insn_bitsize; } ;
struct TYPE_11__ {scalar_t__ insn_chunk_bitsize; } ;
typedef TYPE_1__ CGEN_MACH ;
typedef TYPE_2__ CGEN_ISA ;
typedef TYPE_3__ CGEN_CPU_TABLE ;
typedef int CGEN_BITSET ;


 int CGEN_INT_INSN_P ;
 void* CGEN_SIZE_UNKNOWN ;
 int MAX_ISAS ;
 int MAX_MACHS ;
 void* UNSET ;
 int abort () ;
 int build_hw_table (TYPE_3__*) ;
 int build_ifield_table (TYPE_3__*) ;
 int build_insn_table (TYPE_3__*) ;
 int build_operand_table (TYPE_3__*) ;
 scalar_t__ cgen_bitset_contains (int *,int) ;
 int fprintf (int ,char*,scalar_t__,scalar_t__) ;
 TYPE_2__* mep_cgen_isa_table ;
 TYPE_1__* mep_cgen_mach_table ;
 int stderr ;

__attribute__((used)) static void
mep_cgen_rebuild_tables (CGEN_CPU_TABLE *cd)
{
  int i;
  CGEN_BITSET *isas = cd->isas;
  unsigned int machs = cd->machs;

  cd->int_insn_p = CGEN_INT_INSN_P;



  cd->default_insn_bitsize = (CGEN_SIZE_UNKNOWN + 1);
  cd->base_insn_bitsize = (CGEN_SIZE_UNKNOWN + 1);
  cd->min_insn_bitsize = 65535;
  cd->max_insn_bitsize = 0;
  for (i = 0; i < MAX_ISAS; ++i)
    if (cgen_bitset_contains (isas, i))
      {
 const CGEN_ISA *isa = & mep_cgen_isa_table[i];



 if (cd->default_insn_bitsize == (CGEN_SIZE_UNKNOWN + 1))
   cd->default_insn_bitsize = isa->default_insn_bitsize;
 else if (isa->default_insn_bitsize == cd->default_insn_bitsize)
   ;
 else
   cd->default_insn_bitsize = CGEN_SIZE_UNKNOWN;



 if (cd->base_insn_bitsize == (CGEN_SIZE_UNKNOWN + 1))
   cd->base_insn_bitsize = isa->base_insn_bitsize;
 else if (isa->base_insn_bitsize == cd->base_insn_bitsize)
   ;
 else
   cd->base_insn_bitsize = CGEN_SIZE_UNKNOWN;


 if (isa->min_insn_bitsize < cd->min_insn_bitsize)
   cd->min_insn_bitsize = isa->min_insn_bitsize;
 if (isa->max_insn_bitsize > cd->max_insn_bitsize)
   cd->max_insn_bitsize = isa->max_insn_bitsize;
      }


  for (i = 0; i < MAX_MACHS; ++i)
    if (((1 << i) & machs) != 0)
      {
 const CGEN_MACH *mach = & mep_cgen_mach_table[i];

 if (mach->insn_chunk_bitsize != 0)
 {
   if (cd->insn_chunk_bitsize != 0 && cd->insn_chunk_bitsize != mach->insn_chunk_bitsize)
     {
       fprintf (stderr, "mep_cgen_rebuild_tables: conflicting insn-chunk-bitsize values: `%d' vs. `%d'\n",
         cd->insn_chunk_bitsize, mach->insn_chunk_bitsize);
       abort ();
     }

    cd->insn_chunk_bitsize = mach->insn_chunk_bitsize;
 }
      }


  build_hw_table (cd);


  build_ifield_table (cd);


  build_operand_table (cd);


  build_insn_table (cd);
}
