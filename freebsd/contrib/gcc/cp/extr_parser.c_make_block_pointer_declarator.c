
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {int qualifiers; } ;
struct TYPE_4__ {TYPE_1__ block_pointer; } ;
struct cp_declarator {TYPE_2__ u; struct cp_declarator* declarator; int attributes; } ;
typedef struct cp_declarator cp_declarator ;
typedef int cp_cv_quals ;


 int cdk_block_pointer ;
 struct cp_declarator* make_declarator (int ) ;

cp_declarator *
make_block_pointer_declarator (tree attributes,
    cp_cv_quals quals,
    cp_declarator *target)
{
  struct cp_declarator *itarget = target;
  struct cp_declarator *ret = make_declarator (cdk_block_pointer);





  ret->attributes = attributes;
  ret->declarator = itarget;
  ret->u.block_pointer.qualifiers = quals;
  return ret;
}
