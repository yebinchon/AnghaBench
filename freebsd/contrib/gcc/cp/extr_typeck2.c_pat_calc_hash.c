
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_abstract_type {int type; } ;
typedef int hashval_t ;


 int TYPE_UID (int ) ;

__attribute__((used)) static hashval_t
pat_calc_hash (const void* val)
{
  const struct pending_abstract_type *pat =
     (const struct pending_abstract_type *) val;
  return (hashval_t) TYPE_UID (pat->type);
}
