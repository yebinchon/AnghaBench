
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int hashval_t ;


 int TREE_TYPE (int ) ;
 int TYPE_UID (int ) ;

__attribute__((used)) static hashval_t
hash_type (const void *val)
{
  return (hashval_t) TYPE_UID (TREE_TYPE ((tree) val));
}
