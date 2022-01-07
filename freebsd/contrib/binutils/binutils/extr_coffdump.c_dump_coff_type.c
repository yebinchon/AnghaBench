
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_12__ {int elements; } ;
struct TYPE_22__ {TYPE_8__* ref; } ;
struct TYPE_20__ {TYPE_6__* ref; } ;
struct TYPE_18__ {int elements; } ;
struct TYPE_17__ {int code; int parameters; int lines; struct coff_type* function_returns; } ;
struct TYPE_16__ {int dim; struct coff_type* array_of; } ;
struct TYPE_15__ {struct coff_type* points_to; } ;
struct TYPE_14__ {int address; int size; } ;
struct TYPE_13__ {int basic; TYPE_10__ aenumdef; TYPE_9__ astructref; TYPE_7__ aenumref; TYPE_5__ astructdef; TYPE_4__ function; TYPE_3__ array; TYPE_2__ pointer; TYPE_1__ asecdef; } ;
struct coff_type {int size; int type; TYPE_11__ u; } ;
struct TYPE_21__ {char* name; } ;
struct TYPE_19__ {char* name; } ;
 int abort () ;
 int dump_coff_lines (int ) ;
 int dump_coff_scope (int ) ;
 int nl () ;
 int printf (char*,...) ;
 int tab (int) ;

__attribute__((used)) static void
dump_coff_type (struct coff_type *p)
{
  tab (1);
  printf ("size %d ", p->size);

  switch (p->type)
    {
    case 130:
      printf ("section definition at %x size %x\n",
       p->u.asecdef.address,
       p->u.asecdef.size);
      nl ();
      break;
    case 131:
      printf ("pointer to");
      nl ();
      dump_coff_type (p->u.pointer.points_to);
      break;
    case 136:
      printf ("array [%d] of", p->u.array.dim);
      nl ();
      dump_coff_type (p->u.array.array_of);
      break;
    case 132:
      printf ("function returning");
      nl ();
      dump_coff_type (p->u.function.function_returns);
      dump_coff_lines (p->u.function.lines);
      printf ("arguments");
      nl ();
      dump_coff_scope (p->u.function.parameters);
      tab (0);
      printf ("code");
      nl ();
      dump_coff_scope (p->u.function.code);
      tab(0);
      break;
    case 129:
      printf ("structure definition");
      nl ();
      dump_coff_scope (p->u.astructdef.elements);
      break;
    case 128:
      if (!p->u.aenumref.ref)
 printf ("structure ref to UNKNOWN struct");
      else
 printf ("structure ref to %s", p->u.aenumref.ref->name);
      break;
    case 133:
      printf ("enum ref to %s", p->u.astructref.ref->name);
      break;
    case 134:
      printf ("enum definition");
      nl ();
      dump_coff_scope (p->u.aenumdef.elements);
      break;
    case 135:
      switch (p->u.basic)
 {
 case 145:
   printf ("NULL");
   break;
 case 137:
   printf ("VOID");
   break;
 case 153:
   printf ("CHAR");
   break;
 case 144:
   printf ("SHORT");
   break;
 case 149:
   printf ("INT ");
   break;
 case 147:
   printf ("LONG");
   break;
 case 150:
   printf ("FLOAT");
   break;
 case 152:
   printf ("DOUBLE");
   break;
 case 143:
   printf ("STRUCT");
   break;
 case 139:
   printf ("UNION");
   break;
 case 151:
   printf ("ENUM");
   break;
 case 146:
   printf ("MOE ");
   break;
 case 142:
   printf ("UCHAR");
   break;
 case 138:
   printf ("USHORT");
   break;
 case 141:
   printf ("UINT");
   break;
 case 140:
   printf ("ULONG");
   break;
 case 148:
   printf ("LNGDBL");
   break;
 default:
   abort ();
 }
    }
  nl ();
  tab (-1);
}
