
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_15__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_11__ ;


typedef TYPE_1__* regexp_t ;
typedef TYPE_2__* decl_t ;
struct TYPE_24__ {TYPE_1__* regexp; } ;
struct TYPE_23__ {TYPE_15__* reserv_decl; } ;
struct TYPE_22__ {int regexps_num; TYPE_1__** regexps; } ;
struct TYPE_21__ {int mode; } ;
struct TYPE_20__ {int mode; } ;
struct TYPE_19__ {TYPE_1__* regexp; int loop_pass_num; } ;
struct TYPE_18__ {int regexps_num; TYPE_1__** regexps; } ;
struct TYPE_17__ {int regexps_num; TYPE_1__** regexps; } ;


 TYPE_15__* DECL_RESERV (TYPE_2__*) ;
 TYPE_13__* REGEXP_ALLOF (TYPE_1__*) ;
 TYPE_11__* REGEXP_ONEOF (TYPE_1__*) ;
 TYPE_9__* REGEXP_REPEAT (TYPE_1__*) ;
 TYPE_7__* REGEXP_RESERV (TYPE_1__*) ;
 TYPE_5__* REGEXP_SEQUENCE (TYPE_1__*) ;
 int curr_loop_pass_num ;
 int dm_reserv ;
 int gcc_unreachable () ;
__attribute__((used)) static int
loop_in_regexp (regexp_t regexp, decl_t start_decl)
{
  int i;

  if (regexp == ((void*)0))
    return 0;
  switch (regexp->mode)
    {
      case 128:
 return 0;

    case 130:
      if (start_decl->mode == dm_reserv
          && REGEXP_RESERV (regexp)->reserv_decl == DECL_RESERV (start_decl))
        return 1;
      else if (REGEXP_RESERV (regexp)->reserv_decl->loop_pass_num
        == curr_loop_pass_num)

        return 0;
      else
        {
   REGEXP_RESERV (regexp)->reserv_decl->loop_pass_num
            = curr_loop_pass_num;
          return loop_in_regexp (REGEXP_RESERV (regexp)->reserv_decl->regexp,
                                 start_decl);
        }

    case 129:
      for (i = 0; i <REGEXP_SEQUENCE (regexp)->regexps_num; i++)
 if (loop_in_regexp (REGEXP_SEQUENCE (regexp)->regexps [i], start_decl))
   return 1;
      return 0;

    case 134:
      for (i = 0; i < REGEXP_ALLOF (regexp)->regexps_num; i++)
 if (loop_in_regexp (REGEXP_ALLOF (regexp)->regexps [i], start_decl))
   return 1;
      return 0;

    case 132:
      for (i = 0; i < REGEXP_ONEOF (regexp)->regexps_num; i++)
 if (loop_in_regexp (REGEXP_ONEOF (regexp)->regexps [i], start_decl))
   return 1;
      return 0;

    case 131:
      return loop_in_regexp (REGEXP_REPEAT (regexp)->regexp, start_decl);

    case 133:
      return 0;

    default:
      gcc_unreachable ();
    }
}
