
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int use_optype_p ;
typedef int tree ;


 int ALLOC_OPTYPE (int ,int ) ;
 int APPEND_OP_AFTER (int ,int ) ;
 int INITIALIZE_USE (int ,int *,int ) ;
 int USE_OP_PTR (int ) ;
 int use ;

__attribute__((used)) static inline void
add_use_op (tree stmt, tree *op, use_optype_p *last)
{
  use_optype_p new;

  ALLOC_OPTYPE (new, use);
  INITIALIZE_USE (USE_OP_PTR (new), op, stmt);
  APPEND_OP_AFTER (new, *last);
}
