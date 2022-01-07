
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct type_hash {int type; } ;


 scalar_t__ TYPE_SYMTAB_POINTER (int ) ;
 scalar_t__ ggc_marked_p (int ) ;

__attribute__((used)) static int
type_hash_marked_p (const void *p)
{
  tree type = ((struct type_hash *) p)->type;

  return ggc_marked_p (type) || TYPE_SYMTAB_POINTER (type);
}
