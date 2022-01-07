
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int EINVAL ;
 int UBIFS_LPT_TYPE_BITS ;
 int dbg_dump_stack () ;
 int ubifs_err (char*,int,int) ;
 int ubifs_unpack_bits (int **,int*,int ) ;

__attribute__((used)) static int check_lpt_type(uint8_t **addr, int *pos, int type)
{
 int node_type;

 node_type = ubifs_unpack_bits(addr, pos, UBIFS_LPT_TYPE_BITS);
 if (node_type != type) {
  ubifs_err("invalid type (%d) in LPT node type %d", node_type,
     type);
  dbg_dump_stack();
  return -EINVAL;
 }
 return 0;
}
