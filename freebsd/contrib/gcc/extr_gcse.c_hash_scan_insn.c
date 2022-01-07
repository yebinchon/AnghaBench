
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table {int dummy; } ;
typedef int rtx ;


 scalar_t__ CALL ;
 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 scalar_t__ SET ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 int hash_scan_call (int ,int ,struct hash_table*) ;
 int hash_scan_clobber (int ,int ,struct hash_table*) ;
 int hash_scan_set (int ,int ,struct hash_table*) ;

__attribute__((used)) static void
hash_scan_insn (rtx insn, struct hash_table *table, int in_libcall_block)
{
  rtx pat = PATTERN (insn);
  int i;

  if (in_libcall_block)
    return;




  if (GET_CODE (pat) == SET)
    hash_scan_set (pat, insn, table);
  else if (GET_CODE (pat) == PARALLEL)
    for (i = 0; i < XVECLEN (pat, 0); i++)
      {
 rtx x = XVECEXP (pat, 0, i);

 if (GET_CODE (x) == SET)
   hash_scan_set (x, insn, table);
 else if (GET_CODE (x) == CLOBBER)
   hash_scan_clobber (x, insn, table);
 else if (GET_CODE (x) == CALL)
   hash_scan_call (x, insn, table);
      }

  else if (GET_CODE (pat) == CLOBBER)
    hash_scan_clobber (pat, insn, table);
  else if (GET_CODE (pat) == CALL)
    hash_scan_call (pat, insn, table);
}
