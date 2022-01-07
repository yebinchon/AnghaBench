
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;
typedef struct TYPE_15__ TYPE_11__ ;


typedef TYPE_1__* regexp_t ;
struct TYPE_21__ {int repeat_num; TYPE_1__* regexp; } ;
struct TYPE_20__ {char* name; } ;
struct TYPE_19__ {int regexps_num; TYPE_1__** regexps; } ;
struct TYPE_18__ {char* name; } ;
struct TYPE_17__ {int mode; } ;
struct TYPE_16__ {int regexps_num; TYPE_1__** regexps; } ;
struct TYPE_15__ {int regexps_num; TYPE_1__** regexps; } ;


 char* NOTHING_NAME ;
 TYPE_13__* REGEXP_ALLOF (TYPE_1__*) ;
 TYPE_11__* REGEXP_ONEOF (TYPE_1__*) ;
 TYPE_9__* REGEXP_REPEAT (TYPE_1__*) ;
 TYPE_7__* REGEXP_RESERV (TYPE_1__*) ;
 TYPE_5__* REGEXP_SEQUENCE (TYPE_1__*) ;
 TYPE_3__* REGEXP_UNIT (TYPE_1__*) ;
 int gcc_unreachable () ;
 int irp ;
 int obstack_1grow (int *,char) ;
 int obstack_grow (int *,char const*,int ) ;







 int sprintf (char*,char*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void
form_regexp (regexp_t regexp)
{
  int i;

  switch (regexp->mode)
    {
    case 128: case 130:
      {
 const char *name = (regexp->mode == 128
       ? REGEXP_UNIT (regexp)->name
       : REGEXP_RESERV (regexp)->name);

 obstack_grow (&irp, name, strlen (name));
 break;
      }

    case 129:
      for (i = 0; i < REGEXP_SEQUENCE (regexp)->regexps_num; i++)
 {
   if (i != 0)
     obstack_1grow (&irp, ',');
   form_regexp (REGEXP_SEQUENCE (regexp)->regexps [i]);
 }
      break;

    case 134:
      obstack_1grow (&irp, '(');
      for (i = 0; i < REGEXP_ALLOF (regexp)->regexps_num; i++)
 {
   if (i != 0)
            obstack_1grow (&irp, '+');
   if (REGEXP_ALLOF (regexp)->regexps[i]->mode == 129
              || REGEXP_ALLOF (regexp)->regexps[i]->mode == 132)
            obstack_1grow (&irp, '(');
   form_regexp (REGEXP_ALLOF (regexp)->regexps [i]);
   if (REGEXP_ALLOF (regexp)->regexps[i]->mode == 129
              || REGEXP_ALLOF (regexp)->regexps[i]->mode == 132)
            obstack_1grow (&irp, ')');
        }
      obstack_1grow (&irp, ')');
      break;

    case 132:
      for (i = 0; i < REGEXP_ONEOF (regexp)->regexps_num; i++)
 {
   if (i != 0)
     obstack_1grow (&irp, '|');
   if (REGEXP_ONEOF (regexp)->regexps[i]->mode == 129)
     obstack_1grow (&irp, '(');
   form_regexp (REGEXP_ONEOF (regexp)->regexps [i]);
   if (REGEXP_ONEOF (regexp)->regexps[i]->mode == 129)
          obstack_1grow (&irp, ')');
 }
      break;

    case 131:
      {
 char digits [30];

 if (REGEXP_REPEAT (regexp)->regexp->mode == 129
     || REGEXP_REPEAT (regexp)->regexp->mode == 134
     || REGEXP_REPEAT (regexp)->regexp->mode == 132)
   obstack_1grow (&irp, '(');
 form_regexp (REGEXP_REPEAT (regexp)->regexp);
 if (REGEXP_REPEAT (regexp)->regexp->mode == 129
     || REGEXP_REPEAT (regexp)->regexp->mode == 134
     || REGEXP_REPEAT (regexp)->regexp->mode == 132)
   obstack_1grow (&irp, ')');
 sprintf (digits, "*%d", REGEXP_REPEAT (regexp)->repeat_num);
 obstack_grow (&irp, digits, strlen (digits));
 break;
      }

    case 133:
      obstack_grow (&irp, NOTHING_NAME, strlen (NOTHING_NAME));
      break;

    default:
      gcc_unreachable ();
    }
}
