
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SBITMAP_ELT_TYPE ;


 int MAX_GCSE_MEMORY ;
 int OPT_Wdisabled_optimization ;
 int SBITMAP_SET_SIZE (int) ;
 int max_reg_num () ;
 int n_basic_blocks ;
 int n_edges ;
 int warning (int ,char*,char const*,int,int) ;

__attribute__((used)) static bool
is_too_expensive (const char *pass)
{
  if (n_edges > 20000 + n_basic_blocks * 4)
    {
      warning (OPT_Wdisabled_optimization,
        "%s: %d basic blocks and %d edges/basic block",
        pass, n_basic_blocks, n_edges / n_basic_blocks);

      return 1;
    }



  if ((n_basic_blocks
       * SBITMAP_SET_SIZE (max_reg_num ())
       * sizeof (SBITMAP_ELT_TYPE)) > MAX_GCSE_MEMORY)
    {
      warning (OPT_Wdisabled_optimization,
        "%s: %d basic blocks and %d registers",
        pass, n_basic_blocks, max_reg_num ());

      return 1;
    }

  return 0;
}
