
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int FIRST_PSEUDO_REGISTER ;
 int GEN_INT (int) ;
 int HARD_FRAME_POINTER_REGNUM ;
 int INIT_REG_SET (int *) ;
 int LAST_VIRTUAL_REGISTER ;
 int Pmode ;
 int QImode ;
 int double_reg_address_ok ;
 int gcc_obstack_init (int *) ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_PLUS (int ,int ,int ) ;
 int gen_rtx_REG (int ,int) ;
 int gen_rtx_SYMBOL_REF (int ,char*) ;
 scalar_t__ indirect_symref_ok ;
 scalar_t__ memory_address_p (int ,int ) ;
 int obstack_alloc (int *,int ) ;
 int plus_constant (int ,int) ;
 int pseudos_counted ;
 int reload_obstack ;
 int reload_startobj ;
 scalar_t__ spill_indirect_levels ;
 int spilled_pseudos ;

void
init_reload (void)
{
  int i;





  rtx tem
    = gen_rtx_MEM (Pmode,
     gen_rtx_PLUS (Pmode,
     gen_rtx_REG (Pmode,
           LAST_VIRTUAL_REGISTER + 1),
     GEN_INT (4)));
  spill_indirect_levels = 0;

  while (memory_address_p (QImode, tem))
    {
      spill_indirect_levels++;
      tem = gen_rtx_MEM (Pmode, tem);
    }



  tem = gen_rtx_MEM (Pmode, gen_rtx_SYMBOL_REF (Pmode, "foo"));
  indirect_symref_ok = memory_address_p (QImode, tem);



  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    {
      tem = gen_rtx_PLUS (Pmode,
     gen_rtx_REG (Pmode, HARD_FRAME_POINTER_REGNUM),
     gen_rtx_REG (Pmode, i));


      tem = plus_constant (tem, 4);

      if (memory_address_p (QImode, tem))
 {
   double_reg_address_ok = 1;
   break;
 }
    }


  gcc_obstack_init (&reload_obstack);
  reload_startobj = obstack_alloc (&reload_obstack, 0);

  INIT_REG_SET (&spilled_pseudos);
  INIT_REG_SET (&pseudos_counted);
}
