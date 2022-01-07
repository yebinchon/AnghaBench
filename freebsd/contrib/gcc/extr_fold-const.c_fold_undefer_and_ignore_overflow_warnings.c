
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NULL_TREE ;
 int fold_undefer_overflow_warnings (int,int ,int ) ;

void
fold_undefer_and_ignore_overflow_warnings (void)
{
  fold_undefer_overflow_warnings (0, NULL_TREE, 0);
}
