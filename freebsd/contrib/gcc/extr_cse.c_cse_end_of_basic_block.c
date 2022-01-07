
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cse_basic_block_data {int path_size; int low_cuid; int high_cuid; int nsets; TYPE_1__* path; scalar_t__ last; } ;
typedef scalar_t__ rtx ;
struct TYPE_2__ {scalar_t__ status; scalar_t__ branch; } ;


 scalar_t__ BARRIER_P (scalar_t__) ;
 scalar_t__ CALL_P (scalar_t__) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 scalar_t__ IF_THEN_ELSE ;
 int INSN_CUID (scalar_t__) ;
 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ INSN_UID (scalar_t__) ;
 scalar_t__ JUMP_LABEL (scalar_t__) ;
 scalar_t__ JUMP_P (scalar_t__) ;
 int LABEL_NUSES (scalar_t__) ;
 scalar_t__ LABEL_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int NOTE_P (scalar_t__) ;
 scalar_t__ PARALLEL ;
 int PARAM_MAX_CSE_PATH_LENGTH ;
 int PARAM_VALUE (int ) ;
 scalar_t__ PATH_AROUND ;
 scalar_t__ PATH_NOT_TAKEN ;
 scalar_t__ PATH_TAKEN ;
 int PATTERN (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 int PUT_MODE (scalar_t__,scalar_t__) ;
 scalar_t__ QImode ;
 int REG_SETJMP ;
 scalar_t__ SET ;
 int SET_SRC (int ) ;
 scalar_t__ XVECLEN (int ,int ) ;
 scalar_t__ find_reg_note (scalar_t__,int ,int *) ;
 scalar_t__ max_uid ;
 scalar_t__ next_real_insn (scalar_t__) ;

__attribute__((used)) static void
cse_end_of_basic_block (rtx insn, struct cse_basic_block_data *data,
   int follow_jumps, int skip_blocks)
{
  rtx p = insn, q;
  int nsets = 0;
  int low_cuid = INSN_CUID (insn), high_cuid = INSN_CUID (insn);
  rtx next = INSN_P (insn) ? insn : next_real_insn (insn);
  int path_size = data->path_size;
  int path_entry = 0;
  int i;






  while (path_size > 0)
    {
      if (data->path[path_size - 1].status != PATH_NOT_TAKEN)
 {
   data->path[path_size - 1].status = PATH_NOT_TAKEN;
   break;
 }
      else
 path_size--;
    }







  if (GET_MODE (insn) == QImode)
    follow_jumps = skip_blocks = 0;


  while (p && !LABEL_P (p))
    {



      if (PREV_INSN (p) && CALL_P (PREV_INSN (p))
   && find_reg_note (PREV_INSN (p), REG_SETJMP, ((void*)0)))
 break;



      if (INSN_P (p) && GET_CODE (PATTERN (p)) == PARALLEL)
 nsets += XVECLEN (PATTERN (p), 0);
      else if (!NOTE_P (p))
 nsets += 1;




      if (INSN_UID (p) <= max_uid && INSN_CUID (p) > high_cuid)
 high_cuid = INSN_CUID (p);
      if (INSN_UID (p) <= max_uid && INSN_CUID (p) < low_cuid)
 low_cuid = INSN_CUID (p);



      if (path_entry < path_size && data->path[path_entry].branch == p)
 {
   if (data->path[path_entry].status != PATH_NOT_TAKEN)
     p = JUMP_LABEL (p);


   path_entry++;
 }
      else if ((follow_jumps || skip_blocks) && path_size < PARAM_VALUE (PARAM_MAX_CSE_PATH_LENGTH) - 1
        && JUMP_P (p)
        && GET_CODE (PATTERN (p)) == SET
        && GET_CODE (SET_SRC (PATTERN (p))) == IF_THEN_ELSE
        && JUMP_LABEL (p) != 0
        && LABEL_NUSES (JUMP_LABEL (p)) == 1
        && NEXT_INSN (JUMP_LABEL (p)) != 0)
 {
   for (q = PREV_INSN (JUMP_LABEL (p)); q; q = PREV_INSN (q))
     if ((!NOTE_P (q)
   || (PREV_INSN (q) && CALL_P (PREV_INSN (q))
       && find_reg_note (PREV_INSN (q), REG_SETJMP, ((void*)0))))
  && (!LABEL_P (q) || LABEL_NUSES (q) != 0))
       break;



   if (follow_jumps && q != 0 && BARRIER_P (q))
     {


       if (next_real_insn (q) == next)
  {
    p = NEXT_INSN (p);
    continue;
  }


       for (i = 0; i < path_entry; i++)
  if (data->path[i].branch == p)
    break;

       if (i != path_entry)
  break;

       data->path[path_entry].branch = p;
       data->path[path_entry++].status = PATH_TAKEN;





       path_size = path_entry;

       p = JUMP_LABEL (p);

       PUT_MODE (NEXT_INSN (p), QImode);
     }

   else if (skip_blocks && q != 0 && !LABEL_P (q))
     {
       rtx tmp;

       if (next_real_insn (q) == next)
  {
    p = NEXT_INSN (p);
    continue;
  }

       for (i = 0; i < path_entry; i++)
  if (data->path[i].branch == p)
    break;

       if (i != path_entry)
  break;



       for (tmp = NEXT_INSN (p); tmp && tmp != q; tmp = NEXT_INSN (tmp))
  if (LABEL_P (tmp))
    break;

       if (tmp == q)
  {
    data->path[path_entry].branch = p;
    data->path[path_entry++].status = PATH_AROUND;

    path_size = path_entry;

    p = JUMP_LABEL (p);

    PUT_MODE (NEXT_INSN (p), QImode);
  }
     }
 }
      p = NEXT_INSN (p);
    }

  data->low_cuid = low_cuid;
  data->high_cuid = high_cuid;
  data->nsets = nsets;
  data->last = p;



  for (i = path_size - 1; i >= 0; i--)
    if (data->path[i].status != PATH_NOT_TAKEN)
      break;

  if (i == -1)
    data->path_size = 0;
  else
    data->path_size = path_size;


  data->path[path_size].branch = 0;
}
