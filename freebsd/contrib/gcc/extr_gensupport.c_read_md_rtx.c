
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_elem {int lineno; int filename; int data; struct queue_elem* next; } ;
typedef int rtx ;







 int GET_CODE (int ) ;
 int NULL_RTX ;
 int XSTR (int ,int) ;
 struct queue_elem* define_attr_queue ;
 struct queue_elem* define_insn_queue ;
 struct queue_elem* define_pred_queue ;
 int free (struct queue_elem*) ;
 int insn_elision ;
 int maybe_eval_c_test (int ) ;
 struct queue_elem* other_queue ;
 int read_rtx_filename ;
 int record_insn_name (int,int ) ;
 int sequence_num ;

rtx
read_md_rtx (int *lineno, int *seqnr)
{
  struct queue_elem **queue, *elem;
  rtx desc;

 discard:


  if (define_attr_queue != ((void*)0))
    queue = &define_attr_queue;
  else if (define_pred_queue != ((void*)0))
    queue = &define_pred_queue;
  else if (define_insn_queue != ((void*)0))
    queue = &define_insn_queue;
  else if (other_queue != ((void*)0))
    queue = &other_queue;
  else
    return NULL_RTX;

  elem = *queue;
  *queue = elem->next;
  desc = elem->data;
  read_rtx_filename = elem->filename;
  *lineno = elem->lineno;
  *seqnr = sequence_num;

  free (elem);







  switch (GET_CODE (desc))
    {
    case 131:
    case 132:
      if (maybe_eval_c_test (XSTR (desc, 2)) != 0)
 sequence_num++;
      else if (insn_elision)
 goto discard;



      record_insn_name (*seqnr, XSTR (desc, 0));
      break;

    case 128:
    case 130:
    case 129:
      if (maybe_eval_c_test (XSTR (desc, 1)) != 0)
 sequence_num++;
      else if (insn_elision)
     goto discard;
      break;

    default:
      break;
    }

  return desc;
}
