
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
struct sra_elt {int is_group; int n_copies; struct sra_elt* children; struct sra_elt* sibling; struct sra_elt* groups; void* element; int is_scalar; void* type; struct sra_elt* parent; } ;
typedef enum insert_option { ____Placeholder_insert_option } insert_option ;


 int DECL_UID (void*) ;
 int INSERT ;
 scalar_t__ IS_ELEMENT_FOR_GROUP (void*) ;
 int NO_INSERT ;
 scalar_t__ PARM_DECL ;
 scalar_t__ TREE_CODE (void*) ;
 int bitmap_set_bit (int ,int ) ;
 scalar_t__ htab_find_slot (int ,struct sra_elt*,int) ;
 int is_sra_scalar_type (void*) ;
 int memset (struct sra_elt*,int ,int) ;
 int needs_copy_in ;
 struct sra_elt* obstack_alloc (int *,int) ;
 int sra_map ;
 int sra_obstack ;

__attribute__((used)) static struct sra_elt *
lookup_element (struct sra_elt *parent, tree child, tree type,
  enum insert_option insert)
{
  struct sra_elt dummy;
  struct sra_elt **slot;
  struct sra_elt *elt;

  if (parent)
    dummy.parent = parent->is_group ? parent->parent : parent;
  else
    dummy.parent = ((void*)0);
  dummy.element = child;

  slot = (struct sra_elt **) htab_find_slot (sra_map, &dummy, insert);
  if (!slot && insert == NO_INSERT)
    return ((void*)0);

  elt = *slot;
  if (!elt && insert == INSERT)
    {
      *slot = elt = obstack_alloc (&sra_obstack, sizeof (*elt));
      memset (elt, 0, sizeof (*elt));

      elt->parent = parent;
      elt->element = child;
      elt->type = type;
      elt->is_scalar = is_sra_scalar_type (type);

      if (parent)
 {
   if (IS_ELEMENT_FOR_GROUP (elt->element))
     {
       elt->is_group = 1;
       elt->sibling = parent->groups;
       parent->groups = elt;
     }
   else
     {
       elt->sibling = parent->children;
       parent->children = elt;
     }
 }



      if (TREE_CODE (child) == PARM_DECL)
 {
   elt->n_copies = 1;
   bitmap_set_bit (needs_copy_in, DECL_UID (child));
 }
    }

  return elt;
}
