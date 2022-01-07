
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEAR_REG_SET (int ) ;
 int clear_modify_mem_tables () ;
 int reg_set_bitmap ;

__attribute__((used)) static void
reset_opr_set_tables (void)
{


  CLEAR_REG_SET (reg_set_bitmap);




  clear_modify_mem_tables ();
}
