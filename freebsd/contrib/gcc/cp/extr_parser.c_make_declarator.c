
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cp_declarator_kind ;
struct TYPE_3__ {int * declarator; int attributes; int kind; } ;
typedef TYPE_1__ cp_declarator ;


 int NULL_TREE ;
 scalar_t__ alloc_declarator (int) ;

__attribute__((used)) static cp_declarator *
make_declarator (cp_declarator_kind kind)
{
  cp_declarator *declarator;

  declarator = (cp_declarator *) alloc_declarator (sizeof (cp_declarator));
  declarator->kind = kind;
  declarator->attributes = NULL_TREE;
  declarator->declarator = ((void*)0);

  return declarator;
}
