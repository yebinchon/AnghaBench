
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROP_DEATH_NOTES ;
 int PROP_REG_INFO ;
 int UPDATE_LIFE_LOCAL ;
 int allocate_reg_life_data () ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int dump_flow_info (scalar_t__,int ) ;
 int update_life_info (int *,int ,int) ;

__attribute__((used)) static unsigned int
recompute_reg_usage (void)
{
  allocate_reg_life_data ();




  update_life_info (((void*)0), UPDATE_LIFE_LOCAL, PROP_REG_INFO | PROP_DEATH_NOTES);

  if (dump_file)
    dump_flow_info (dump_file, dump_flags);
  return 0;
}
