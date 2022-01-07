
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {void* padding; } ;
 int TREE_CODE (int ) ;

 int TREE_TYPE (int ) ;




 int TYPE_METHOD_BASETYPE (int ) ;
 int TYPE_OFFSET_BASETYPE (int ) ;
 int TYPE_PTRMEMFUNC_FN_TYPE (int ) ;
 scalar_t__ TYPE_PTRMEMFUNC_P (int ) ;




 int cxx_pp ;
 int dump_aggr_type (int ,int) ;
 int dump_type (int ,int) ;
 TYPE_1__* pp_base (int ) ;
 void* pp_before ;
 int pp_character (int ,char) ;
 int pp_cxx_colon_colon (int ) ;
 int pp_cxx_cv_qualifier_seq (int ,int ) ;
 int pp_cxx_left_paren (int ) ;
 int pp_cxx_star (int ) ;
 int pp_cxx_whitespace (int ) ;
 int pp_identifier (int ,char*) ;
 int pp_maybe_space (int ) ;
 int pp_unsupported_tree (int ,int ) ;

__attribute__((used)) static void
dump_type_prefix (tree t, int flags)
{
  if (TYPE_PTRMEMFUNC_P (t))
    {
      t = TYPE_PTRMEMFUNC_FN_TYPE (t);
      goto offset_type;
    }

  switch (TREE_CODE (t))
    {
    case 142:

    case 153:
    case 139:
      {
 tree sub = TREE_TYPE (t);

 dump_type_prefix (sub, flags);
 if (TREE_CODE (sub) == 154)
   {
     pp_cxx_whitespace (cxx_pp);
     pp_cxx_left_paren (cxx_pp);
   }

 pp_character (cxx_pp, "&*^"[(TREE_CODE (t) == 142)
        + (TREE_CODE (t) == 153)*2]);

 pp_base (cxx_pp)->padding = pp_before;
 pp_cxx_cv_qualifier_seq (cxx_pp, t);
      }
      break;

    case 143:
    offset_type:
      dump_type_prefix (TREE_TYPE (t), flags);
      if (TREE_CODE (t) == 143)
 {
   pp_maybe_space (cxx_pp);
   if (TREE_CODE (TREE_TYPE (t)) == 154)
      pp_cxx_left_paren (cxx_pp);
   dump_type (TYPE_OFFSET_BASETYPE (t), flags);
   pp_cxx_colon_colon (cxx_pp);
 }
      pp_cxx_star (cxx_pp);
      pp_cxx_cv_qualifier_seq (cxx_pp, t);
      pp_base (cxx_pp)->padding = pp_before;
      break;



    case 147:
      dump_type_prefix (TREE_TYPE (t), flags);
      pp_maybe_space (cxx_pp);
      pp_cxx_left_paren (cxx_pp);
      break;

    case 144:
      dump_type_prefix (TREE_TYPE (t), flags);
      pp_maybe_space (cxx_pp);
      pp_cxx_left_paren (cxx_pp);
      dump_aggr_type (TYPE_METHOD_BASETYPE (t), flags);
      pp_cxx_colon_colon (cxx_pp);
      break;

    case 154:
      dump_type_prefix (TREE_TYPE (t), flags);
      break;

    case 149:
    case 146:
    case 145:
    case 152:
    case 141:
    case 140:
    case 137:
    case 138:
    case 151:
    case 136:
    case 132:
    case 135:
    case 131:
    case 130:
    case 128:
    case 134:
    case 150:
    case 129:
    case 133:
      dump_type (t, flags);
      pp_base (cxx_pp)->padding = pp_before;
      break;

    default:
      pp_unsupported_tree (cxx_pp, t);

    case 148:
      pp_identifier (cxx_pp, "<typeprefixerror>");
      break;
    }
}
