
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
typedef int gcov_type ;
struct TYPE_4__ {int src_fn; } ;
typedef TYPE_1__ copy_body_data ;
typedef int basic_block ;


 int DECL_STRUCT_FUNCTION (int ) ;
 int ENTRY_BLOCK_PTR_FOR_FUNCTION (int ) ;
 int copy_cfg_body (TYPE_1__*,int ,int,int ,int ) ;
 int gcc_assert (int ) ;

__attribute__((used)) static tree
copy_body (copy_body_data *id, gcov_type count, int frequency,
    basic_block entry_block_map, basic_block exit_block_map)
{
  tree fndecl = id->src_fn;
  tree body;


  gcc_assert (ENTRY_BLOCK_PTR_FOR_FUNCTION (DECL_STRUCT_FUNCTION (fndecl)));
  body = copy_cfg_body (id, count, frequency, entry_block_map, exit_block_map);

  return body;
}
