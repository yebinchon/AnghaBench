
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_15__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_11__ ;


struct regexp {int dummy; } ;
typedef TYPE_2__* regexp_t ;
struct TYPE_23__ {TYPE_1__* reserv_decl; } ;
struct TYPE_22__ {int regexps_num; TYPE_2__** regexps; } ;
struct TYPE_21__ {int mode; } ;
struct TYPE_20__ {TYPE_2__* regexp; } ;
struct TYPE_19__ {int regexps_num; TYPE_2__** regexps; } ;
struct TYPE_18__ {int regexps_num; TYPE_2__** regexps; } ;
struct TYPE_17__ {TYPE_2__* regexp; } ;


 TYPE_15__* REGEXP_ALLOF (TYPE_2__*) ;
 TYPE_13__* REGEXP_ONEOF (TYPE_2__*) ;
 TYPE_11__* REGEXP_REPEAT (TYPE_2__*) ;
 TYPE_9__* REGEXP_RESERV (TYPE_2__*) ;
 TYPE_7__* REGEXP_SEQUENCE (TYPE_2__*) ;
 TYPE_2__* copy_node (TYPE_2__*,int) ;
 int gcc_unreachable () ;
__attribute__((used)) static regexp_t
copy_insn_regexp (regexp_t regexp)
{
  regexp_t result;
  int i;

  switch (regexp->mode)
    {
    case 130:
      result = copy_insn_regexp (REGEXP_RESERV (regexp)->reserv_decl->regexp);
      break;

    case 128:
      result = copy_node (regexp, sizeof (struct regexp));
      break;

    case 131:
      result = copy_node (regexp, sizeof (struct regexp));
      REGEXP_REPEAT (result)->regexp
        = copy_insn_regexp (REGEXP_REPEAT (regexp)->regexp);
      break;

    case 129:
      result = copy_node (regexp,
                          sizeof (struct regexp) + sizeof (regexp_t)
     * (REGEXP_SEQUENCE (regexp)->regexps_num - 1));
      for (i = 0; i <REGEXP_SEQUENCE (regexp)->regexps_num; i++)
 REGEXP_SEQUENCE (result)->regexps [i]
   = copy_insn_regexp (REGEXP_SEQUENCE (regexp)->regexps [i]);
      break;

    case 134:
      result = copy_node (regexp,
                          sizeof (struct regexp) + sizeof (regexp_t)
     * (REGEXP_ALLOF (regexp)->regexps_num - 1));
      for (i = 0; i < REGEXP_ALLOF (regexp)->regexps_num; i++)
 REGEXP_ALLOF (result)->regexps [i]
   = copy_insn_regexp (REGEXP_ALLOF (regexp)->regexps [i]);
      break;

    case 132:
      result = copy_node (regexp,
                          sizeof (struct regexp) + sizeof (regexp_t)
     * (REGEXP_ONEOF (regexp)->regexps_num - 1));
      for (i = 0; i < REGEXP_ONEOF (regexp)->regexps_num; i++)
 REGEXP_ONEOF (result)->regexps [i]
   = copy_insn_regexp (REGEXP_ONEOF (regexp)->regexps [i]);
      break;

    case 133:
      result = copy_node (regexp, sizeof (struct regexp));
      break;

    default:
      gcc_unreachable ();
    }
  return result;
}
