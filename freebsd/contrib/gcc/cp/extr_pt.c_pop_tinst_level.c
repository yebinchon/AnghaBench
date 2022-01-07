
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TINST_IN_SYSTEM_HEADER_P (int ) ;
 int TINST_LOCATION (int ) ;
 int TREE_CHAIN (int ) ;
 int current_tinst_level ;
 int in_system_header ;
 int input_location ;
 int tinst_depth ;
 int tinst_level_tick ;

__attribute__((used)) static void
pop_tinst_level (void)
{
  tree old = current_tinst_level;



  input_location = TINST_LOCATION (old);
  in_system_header = TINST_IN_SYSTEM_HEADER_P (old);
  current_tinst_level = TREE_CHAIN (old);
  --tinst_depth;
  ++tinst_level_tick;
}
