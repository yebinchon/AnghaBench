
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_varpool_node {int decl; } ;
typedef int hashval_t ;


 int DECL_UID (int ) ;

__attribute__((used)) static hashval_t
hash_varpool_node (const void *p)
{
  const struct cgraph_varpool_node *n = (const struct cgraph_varpool_node *) p;
  return (hashval_t) DECL_UID (n->decl);
}
