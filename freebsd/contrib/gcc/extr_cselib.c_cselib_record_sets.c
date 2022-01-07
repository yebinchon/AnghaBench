
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set {void* dest_addr_elt; void* src_elt; void* dest; void* src; } ;
typedef void* rtx ;


 scalar_t__ COND_EXEC ;
 void* COND_EXEC_CODE (void*) ;
 void* COND_EXEC_TEST (void*) ;
 scalar_t__ GET_CODE (void*) ;
 int GET_MODE (void*) ;
 int MAX_SETS ;
 scalar_t__ MEM_P (void*) ;
 scalar_t__ PARALLEL ;
 void* PATTERN (void*) ;
 int Pmode ;
 scalar_t__ REG_P (void*) ;
 scalar_t__ SET ;
 void* SET_DEST (void*) ;
 void* SET_SRC (void*) ;
 scalar_t__ STRICT_LOW_PART ;
 void* XEXP (void*,int ) ;
 void* XVECEXP (void*,int ,int) ;
 int XVECLEN (void*,int ) ;
 scalar_t__ asm_noperands (void*) ;
 int cselib_invalidate_rtx_note_stores ;
 void* cselib_lookup (void*,int ,int) ;
 scalar_t__ cselib_record_memory ;
 int cselib_record_set (void*,void*,void*) ;
 void* gen_rtx_IF_THEN_ELSE (int ,void*,void*,void*) ;
 int note_stores (void*,int ,int *) ;
 void* pc_rtx ;
 scalar_t__ rtx_equal_p (void*,void*) ;

__attribute__((used)) static void
cselib_record_sets (rtx insn)
{
  int n_sets = 0;
  int i;
  struct set sets[MAX_SETS];
  rtx body = PATTERN (insn);
  rtx cond = 0;

  body = PATTERN (insn);
  if (GET_CODE (body) == COND_EXEC)
    {
      cond = COND_EXEC_TEST (body);
      body = COND_EXEC_CODE (body);
    }


  if (GET_CODE (body) == SET)
    {
      sets[0].src = SET_SRC (body);
      sets[0].dest = SET_DEST (body);
      n_sets = 1;
    }
  else if (GET_CODE (body) == PARALLEL)
    {


      for (i = XVECLEN (body, 0) - 1; i >= 0; --i)
 {
   rtx x = XVECEXP (body, 0, i);

   if (GET_CODE (x) == SET)
     {
       sets[n_sets].src = SET_SRC (x);
       sets[n_sets].dest = SET_DEST (x);
       n_sets++;
     }
 }
    }



  for (i = 0; i < n_sets; i++)
    {
      rtx dest = sets[i].dest;



      if (GET_CODE (sets[i].dest) == STRICT_LOW_PART)
 sets[i].dest = dest = XEXP (dest, 0);


      if (REG_P (dest)
   || (MEM_P (dest) && cselib_record_memory))
        {
   rtx src = sets[i].src;
   if (cond)
     src = gen_rtx_IF_THEN_ELSE (GET_MODE (src), cond, src, dest);
   sets[i].src_elt = cselib_lookup (src, GET_MODE (dest), 1);
   if (MEM_P (dest))
     sets[i].dest_addr_elt = cselib_lookup (XEXP (dest, 0), Pmode, 1);
   else
     sets[i].dest_addr_elt = 0;
 }
    }




  note_stores (body, cselib_invalidate_rtx_note_stores, ((void*)0));






  if (n_sets >= 2 && asm_noperands (body) >= 0)
    {
      for (i = 0; i < n_sets; i++)
 {
   rtx dest = sets[i].dest;
   if (REG_P (dest) || MEM_P (dest))
     {
       int j;
       for (j = i + 1; j < n_sets; j++)
  if (rtx_equal_p (dest, sets[j].dest))
    {
      sets[i].dest = pc_rtx;
      sets[j].dest = pc_rtx;
    }
     }
 }
    }


  for (i = 0; i < n_sets; i++)
    {
      rtx dest = sets[i].dest;
      if (REG_P (dest)
   || (MEM_P (dest) && cselib_record_memory))
 cselib_record_set (dest, sets[i].src_elt, sets[i].dest_addr_elt);
    }
}
