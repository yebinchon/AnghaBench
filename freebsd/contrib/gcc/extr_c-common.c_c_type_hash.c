
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int hashval_t ;






 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_CODE (scalar_t__) ;
 int TREE_INT_CST_LOW (int ) ;
 void* TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 int TYPE_SIZE (scalar_t__) ;
 scalar_t__ TYPE_VALUES (scalar_t__) ;

 int gcc_unreachable () ;

__attribute__((used)) static hashval_t
c_type_hash (const void *p)
{
  int i = 0;
  int shift, size;
  tree t = (tree) p;
  tree t2;
  switch (TREE_CODE (t))
    {

    case 131:
      return c_type_hash (TREE_TYPE (t)) ^ 0x3003003;

    case 132:
      shift = 3;
      t2 = TYPE_VALUES (t);
      break;
    case 129:
      shift = 0;
      t2 = TYPE_FIELDS (t);
      break;
    case 130:
      shift = 1;
      t2 = TYPE_FIELDS (t);
      break;
    case 128:
      shift = 2;
      t2 = TYPE_FIELDS (t);
      break;
    default:
      gcc_unreachable ();
    }
  for (; t2; t2 = TREE_CHAIN (t2))
    i++;
  size = TREE_INT_CST_LOW (TYPE_SIZE (t));
  return ((size << 24) | (i << shift));
}
