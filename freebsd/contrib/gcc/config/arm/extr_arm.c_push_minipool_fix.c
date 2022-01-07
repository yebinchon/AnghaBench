
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {void** loc; int mode; int fix_size; struct TYPE_4__* next; void* value; scalar_t__ forwards; scalar_t__ backwards; int * minipool; scalar_t__ address; void* insn; } ;
typedef TYPE_1__ Mfix ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ ARM_DOUBLEWORD_ALIGN ;
 scalar_t__ GET_CODE (void*) ;
 char* GET_MODE_NAME (int) ;
 int INSN_UID (void*) ;
 int MINIPOOL_FIX_SIZE (int) ;
 scalar_t__ SYMBOL_REF ;
 void* aof_pic_entry (void*) ;
 int arm_print_value (scalar_t__,void*) ;
 scalar_t__ dump_file ;
 scalar_t__ flag_pic ;
 int fprintf (scalar_t__,char*,...) ;
 int gcc_assert (int) ;
 scalar_t__ get_attr_neg_pool_range (void*) ;
 scalar_t__ get_attr_pool_range (void*) ;
 TYPE_1__* minipool_fix_head ;
 TYPE_1__* minipool_fix_tail ;
 int minipool_obstack ;
 int minipool_pad ;
 scalar_t__ obstack_alloc (int *,int) ;

__attribute__((used)) static void
push_minipool_fix (rtx insn, HOST_WIDE_INT address, rtx *loc,
     enum machine_mode mode, rtx value)
{
  Mfix * fix = (Mfix *) obstack_alloc (&minipool_obstack, sizeof (* fix));
  fix->insn = insn;
  fix->address = address;
  fix->loc = loc;
  fix->mode = mode;
  fix->fix_size = MINIPOOL_FIX_SIZE (mode);
  fix->value = value;
  fix->forwards = get_attr_pool_range (insn);
  fix->backwards = get_attr_neg_pool_range (insn);
  fix->minipool = ((void*)0);




  gcc_assert (fix->forwards || fix->backwards);




  if (ARM_DOUBLEWORD_ALIGN && fix->fix_size == 8)
    minipool_pad = 4;

  if (dump_file)
    {
      fprintf (dump_file,
        ";; %smode fixup for i%d; addr %lu, range (%ld,%ld): ",
        GET_MODE_NAME (mode),
        INSN_UID (insn), (unsigned long) address,
        -1 * (long)fix->backwards, (long)fix->forwards);
      arm_print_value (dump_file, fix->value);
      fprintf (dump_file, "\n");
    }


  fix->next = ((void*)0);

  if (minipool_fix_head != ((void*)0))
    minipool_fix_tail->next = fix;
  else
    minipool_fix_head = fix;

  minipool_fix_tail = fix;
}
