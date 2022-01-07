
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int rtx ;
struct TYPE_4__ {int * regs; } ;
typedef TYPE_1__ dataflow_set ;
struct TYPE_5__ {TYPE_1__ out; } ;
typedef int HOST_WIDE_INT ;


 scalar_t__ BLKmode ;
 scalar_t__ DECL_ARGUMENTS (int ) ;
 int DECL_INCOMING_RTL (scalar_t__) ;
 int DECL_NAME (scalar_t__) ;
 int DECL_RTL_IF_SET (scalar_t__) ;
 int ENTRY_BLOCK_PTR ;
 size_t FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_MODE (int ) ;
 scalar_t__ MEM_P (int ) ;
 scalar_t__ PARM_DECL ;
 size_t REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 TYPE_3__* VTI (int ) ;
 int attrs_list_insert (int *,scalar_t__,int ,int ) ;
 int current_function_decl ;
 int gcc_assert (int) ;
 int set_variable_part (TYPE_1__*,int ,scalar_t__,int ) ;
 int vt_get_decl_and_offset (int ,scalar_t__*,int *) ;

__attribute__((used)) static void
vt_add_function_parameters (void)
{
  tree parm;

  for (parm = DECL_ARGUMENTS (current_function_decl);
       parm; parm = TREE_CHAIN (parm))
    {
      rtx decl_rtl = DECL_RTL_IF_SET (parm);
      rtx incoming = DECL_INCOMING_RTL (parm);
      tree decl;
      HOST_WIDE_INT offset;
      dataflow_set *out;

      if (TREE_CODE (parm) != PARM_DECL)
 continue;

      if (!DECL_NAME (parm))
 continue;

      if (!decl_rtl || !incoming)
 continue;

      if (GET_MODE (decl_rtl) == BLKmode || GET_MODE (incoming) == BLKmode)
 continue;

      if (!vt_get_decl_and_offset (incoming, &decl, &offset))
 if (!vt_get_decl_and_offset (decl_rtl, &decl, &offset))
   continue;

      if (!decl)
 continue;

      gcc_assert (parm == decl);

      out = &VTI (ENTRY_BLOCK_PTR)->out;

      if (REG_P (incoming))
 {
   gcc_assert (REGNO (incoming) < FIRST_PSEUDO_REGISTER);
   attrs_list_insert (&out->regs[REGNO (incoming)],
        parm, offset, incoming);
   set_variable_part (out, incoming, parm, offset);
 }
      else if (MEM_P (incoming))
 set_variable_part (out, incoming, parm, offset);
    }
}
