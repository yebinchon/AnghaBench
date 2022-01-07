
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_MAX_VALUE (int ) ;
 scalar_t__ host_integerp (int ,int) ;
 int offset_limit ;
 int sizetype ;
 int tree_low_cst (int ,int) ;

__attribute__((used)) static void
init_offset_limit (void)
{
  if (host_integerp (TYPE_MAX_VALUE (sizetype), 1))
    offset_limit = tree_low_cst (TYPE_MAX_VALUE (sizetype), 1);
  else
    offset_limit = -1;
  offset_limit /= 2;
}
