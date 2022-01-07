
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
struct mem_address {void* offset; void* step; int index; int base; int symbol; } ;


 void* NULL_TREE ;
 int TARGET_MEM_REF ;
 int TYPE_MODE (void*) ;
 void* build7 (int ,void*,int ,int ,int ,void*,void*,int *,int *) ;
 scalar_t__ integer_onep (void*) ;
 int valid_mem_ref_p (int ,struct mem_address*) ;
 scalar_t__ zero_p (void*) ;

__attribute__((used)) static tree
create_mem_ref_raw (tree type, struct mem_address *addr)
{
  if (!valid_mem_ref_p (TYPE_MODE (type), addr))
    return NULL_TREE;

  if (addr->step && integer_onep (addr->step))
    addr->step = NULL_TREE;

  if (addr->offset && zero_p (addr->offset))
    addr->offset = NULL_TREE;

  return build7 (TARGET_MEM_REF, type,
   addr->symbol, addr->base, addr->index,
   addr->step, addr->offset, ((void*)0), ((void*)0));
}
