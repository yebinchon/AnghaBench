
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pred_data {scalar_t__* codes; } ;
struct TYPE_8__ {TYPE_1__* first; } ;
struct decision {int need_label; int number; struct decision* next; TYPE_2__ success; TYPE_5__* tests; int afterward; } ;
typedef enum decision_type { ____Placeholder_decision_type } decision_type ;
typedef int codemap ;
struct TYPE_9__ {struct pred_data* data; } ;
struct TYPE_10__ {size_t code; int veclen; int intval; int mode; TYPE_3__ pred; } ;
struct TYPE_11__ {int type; TYPE_4__ u; scalar_t__ next; } ;
struct TYPE_7__ {int number; int need_label; } ;
typedef size_t RTX_CODE ;


 int DT_code ;





 int DT_pred ;

 char* GET_MODE_NAME (int ) ;
 int NUM_RTX_CODE ;
 int fputs (char*,int ) ;
 int gcc_unreachable () ;
 int memset (char*,int ,int) ;
 scalar_t__ nodes_identical_1 (TYPE_5__*,TYPE_5__*) ;
 int print_code (size_t) ;
 int print_host_wide_int (int ) ;
 int printf (char*,...) ;
 int stdout ;
 int write_afterward (struct decision*,int ,char*) ;

__attribute__((used)) static struct decision *
write_switch (struct decision *start, int depth)
{
  struct decision *p = start;
  enum decision_type type = p->tests->type;
  struct decision *needs_label = ((void*)0);




  if (!p->next
      || p->tests->next
      || p->next->tests->type != type
      || p->next->tests->next
      || nodes_identical_1 (p->tests, p->next->tests))
    return p;



  if (type == DT_code)
    {
      char codemap[NUM_RTX_CODE];
      struct decision *ret;
      RTX_CODE code;

      memset (codemap, 0, sizeof(codemap));

      printf ("  switch (GET_CODE (x%d))\n    {\n", depth);
      code = p->tests->u.code;
      do
 {
   if (p != start && p->need_label && needs_label == ((void*)0))
     needs_label = p;

   printf ("    case ");
   print_code (code);
   printf (":\n      goto L%d;\n", p->success.first->number);
   p->success.first->need_label = 1;

   codemap[code] = 1;
   p = p->next;
 }
      while (p
      && ! p->tests->next
      && p->tests->type == DT_code
      && ! codemap[code = p->tests->u.code]);
      if (needs_label != ((void*)0))
 ret = needs_label;
      else
 ret = p;

      while (p && p->tests->type == DT_pred && p->tests->u.pred.data)
 {
   const struct pred_data *data = p->tests->u.pred.data;
   RTX_CODE c;
   for (c = 0; c < NUM_RTX_CODE; c++)
     if (codemap[c] && data->codes[c])
       goto pred_done;

   for (c = 0; c < NUM_RTX_CODE; c++)
     if (data->codes[c])
       {
  fputs ("    case ", stdout);
  print_code (c);
  fputs (":\n", stdout);
  codemap[c] = 1;
       }

   printf ("      goto L%d;\n", p->number);
   p->need_label = 1;
   p = p->next;
 }

    pred_done:


      printf ("    default:\n");
      if (p != ret)
 {
   if (p)
     {
       printf ("      goto L%d;\n", p->number);
       p->need_label = 1;
     }
   else
     write_afterward (start, start->afterward, "      ");
 }
      else
 printf ("     break;\n");
      printf ("   }\n");

      return ret;
    }
  else if (type == 129
    || type == 128
    || type == 132
    || type == 133
    || type == 130)
    {
      const char *indent = "";



      if (type == 130)
 {
   indent = "  ";
   printf("  if ((int) XWINT (x%d, 0) == XWINT (x%d, 0))\n", depth, depth);
 }
      printf ("%s  switch (", indent);
      switch (type)
 {
 case 129:
   printf ("GET_MODE (x%d)", depth);
   break;
 case 128:
   printf ("XVECLEN (x%d, 0)", depth);
   break;
 case 132:
   printf ("XINT (x%d, 0)", depth);
   break;
 case 133:
   printf ("XINT (x%d, 1)", depth);
   break;
 case 130:


   printf ("(int) XWINT (x%d, 0)", depth);
   break;
 default:
   gcc_unreachable ();
 }
      printf (")\n%s    {\n", indent);

      do
 {



   struct decision *q;
   for (q = start; q != p; q = q->next)
     if (nodes_identical_1 (p->tests, q->tests))
       goto case_done;

   if (p != start && p->need_label && needs_label == ((void*)0))
     needs_label = p;

   printf ("%s    case ", indent);
   switch (type)
     {
     case 129:
       printf ("%smode", GET_MODE_NAME (p->tests->u.mode));
       break;
     case 128:
       printf ("%d", p->tests->u.veclen);
       break;
     case 132:
     case 133:
     case 131:
     case 130:
       print_host_wide_int (p->tests->u.intval);
       break;
     default:
       gcc_unreachable ();
     }
   printf (":\n%s      goto L%d;\n", indent, p->success.first->number);
   p->success.first->need_label = 1;

   p = p->next;
 }
      while (p && p->tests->type == type && !p->tests->next);

    case_done:
      printf ("%s    default:\n%s      break;\n%s    }\n",
       indent, indent, indent);

      return needs_label != ((void*)0) ? needs_label : p;
    }
  else
    {

      return p;
    }
}
