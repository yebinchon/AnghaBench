
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type_hash {scalar_t__ hash; int type; } ;
 int TREE_CODE (int ) ;
 int TREE_LIST ;
 scalar_t__ TREE_TYPE (int ) ;
 scalar_t__ TYPE_ALIGN (int ) ;
 int TYPE_ARG_TYPES (int ) ;
 int TYPE_ATTRIBUTES (int ) ;
 int TYPE_DOMAIN (int ) ;
 int TYPE_FIELDS (int ) ;
 int TYPE_MAX_VALUE (int ) ;
 int TYPE_METHOD_BASETYPE (int ) ;
 int TYPE_MIN_VALUE (int ) ;
 scalar_t__ TYPE_MODE (int ) ;
 int TYPE_OFFSET_BASETYPE (int ) ;
 int TYPE_VALUES (int ) ;
 int TYPE_VECTOR_SUBPARTS (int ) ;



 int attribute_list_equal (int ,int ) ;
 int tree_int_cst_equal (int ,int ) ;
 int type_list_equal (int ,int ) ;

__attribute__((used)) static int
type_hash_eq (const void *va, const void *vb)
{
  const struct type_hash *a = va, *b = vb;


  if (a->hash != b->hash
      || TREE_CODE (a->type) != TREE_CODE (b->type)
      || TREE_TYPE (a->type) != TREE_TYPE (b->type)
      || !attribute_list_equal (TYPE_ATTRIBUTES (a->type),
     TYPE_ATTRIBUTES (b->type))
      || TYPE_ALIGN (a->type) != TYPE_ALIGN (b->type)
      || TYPE_MODE (a->type) != TYPE_MODE (b->type))
    return 0;

  switch (TREE_CODE (a->type))
    {
    case 128:
    case 141:
    case 135:
    case 131:
      return 1;

    case 129:
      return TYPE_VECTOR_SUBPARTS (a->type) == TYPE_VECTOR_SUBPARTS (b->type);

    case 140:
      if (TYPE_VALUES (a->type) != TYPE_VALUES (b->type)
   && !(TYPE_VALUES (a->type)
        && TREE_CODE (TYPE_VALUES (a->type)) == TREE_LIST
        && TYPE_VALUES (b->type)
        && TREE_CODE (TYPE_VALUES (b->type)) == TREE_LIST
        && type_list_equal (TYPE_VALUES (a->type),
       TYPE_VALUES (b->type))))
 return 0;



    case 138:
    case 133:
    case 142:
      return ((TYPE_MAX_VALUE (a->type) == TYPE_MAX_VALUE (b->type)
        || tree_int_cst_equal (TYPE_MAX_VALUE (a->type),
          TYPE_MAX_VALUE (b->type)))
       && (TYPE_MIN_VALUE (a->type) == TYPE_MIN_VALUE (b->type)
    || tree_int_cst_equal (TYPE_MIN_VALUE (a->type),
      TYPE_MIN_VALUE (b->type))));

    case 136:
      return TYPE_OFFSET_BASETYPE (a->type) == TYPE_OFFSET_BASETYPE (b->type);

    case 137:
      return (TYPE_METHOD_BASETYPE (a->type) == TYPE_METHOD_BASETYPE (b->type)
       && (TYPE_ARG_TYPES (a->type) == TYPE_ARG_TYPES (b->type)
    || (TYPE_ARG_TYPES (a->type)
        && TREE_CODE (TYPE_ARG_TYPES (a->type)) == TREE_LIST
        && TYPE_ARG_TYPES (b->type)
        && TREE_CODE (TYPE_ARG_TYPES (b->type)) == TREE_LIST
        && type_list_equal (TYPE_ARG_TYPES (a->type),
       TYPE_ARG_TYPES (b->type)))));

    case 143:
      return TYPE_DOMAIN (a->type) == TYPE_DOMAIN (b->type);

    case 132:
    case 130:
    case 134:
      return (TYPE_FIELDS (a->type) == TYPE_FIELDS (b->type)
       || (TYPE_FIELDS (a->type)
    && TREE_CODE (TYPE_FIELDS (a->type)) == TREE_LIST
    && TYPE_FIELDS (b->type)
    && TREE_CODE (TYPE_FIELDS (b->type)) == TREE_LIST
    && type_list_equal (TYPE_FIELDS (a->type),
          TYPE_FIELDS (b->type))));

    case 139:
      return (TYPE_ARG_TYPES (a->type) == TYPE_ARG_TYPES (b->type)
       || (TYPE_ARG_TYPES (a->type)
    && TREE_CODE (TYPE_ARG_TYPES (a->type)) == TREE_LIST
    && TYPE_ARG_TYPES (b->type)
    && TREE_CODE (TYPE_ARG_TYPES (b->type)) == TREE_LIST
    && type_list_equal (TYPE_ARG_TYPES (a->type),
          TYPE_ARG_TYPES (b->type))));

    default:
      return 0;
    }
}
