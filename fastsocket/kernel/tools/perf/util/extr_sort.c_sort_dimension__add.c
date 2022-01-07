
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sort_dimension {int taken; TYPE_1__* entry; int name; } ;
typedef int err ;
struct TYPE_5__ {int list; scalar_t__ se_collapse; } ;


 unsigned int ARRAY_SIZE (struct sort_dimension*) ;
 int BUFSIZ ;
 int EINVAL ;
 int ESRCH ;
 int REG_EXTENDED ;
 int SORT_COMM ;
 int SORT_CPU ;
 int SORT_DSO ;
 int SORT_DSO_FROM ;
 int SORT_DSO_TO ;
 int SORT_MISPREDICT ;
 int SORT_PARENT ;
 int SORT_PID ;
 int SORT_SYM ;
 int SORT_SYM_FROM ;
 int SORT_SYM_TO ;
 int hist_entry__sort_list ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int parent_pattern ;
 int parent_regex ;
 int pr_err (char*,int ,char*) ;
 int regcomp (int *,int ,int ) ;
 int regerror (int,int *,char*,int) ;
 int sort__first_dimension ;
 int sort__has_parent ;
 int sort__has_sym ;
 int sort__need_collapse ;
 struct sort_dimension* sort_dimensions ;
 TYPE_1__ sort_parent ;
 TYPE_1__ sort_sym ;
 TYPE_1__ sort_sym_from ;
 TYPE_1__ sort_sym_to ;
 int strcmp (int ,char*) ;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,int ,int ) ;

int sort_dimension__add(const char *tok)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(sort_dimensions); i++) {
  struct sort_dimension *sd = &sort_dimensions[i];

  if (strncasecmp(tok, sd->name, strlen(tok)))
   continue;
  if (sd->entry == &sort_parent) {
   int ret = regcomp(&parent_regex, parent_pattern, REG_EXTENDED);
   if (ret) {
    char err[BUFSIZ];

    regerror(ret, &parent_regex, err, sizeof(err));
    pr_err("Invalid regex: %s\n%s", parent_pattern, err);
    return -EINVAL;
   }
   sort__has_parent = 1;
  } else if (sd->entry == &sort_sym ||
      sd->entry == &sort_sym_from ||
      sd->entry == &sort_sym_to) {
   sort__has_sym = 1;
  }

  if (sd->taken)
   return 0;

  if (sd->entry->se_collapse)
   sort__need_collapse = 1;

  if (list_empty(&hist_entry__sort_list)) {
   if (!strcmp(sd->name, "pid"))
    sort__first_dimension = SORT_PID;
   else if (!strcmp(sd->name, "comm"))
    sort__first_dimension = SORT_COMM;
   else if (!strcmp(sd->name, "dso"))
    sort__first_dimension = SORT_DSO;
   else if (!strcmp(sd->name, "symbol"))
    sort__first_dimension = SORT_SYM;
   else if (!strcmp(sd->name, "parent"))
    sort__first_dimension = SORT_PARENT;
   else if (!strcmp(sd->name, "cpu"))
    sort__first_dimension = SORT_CPU;
   else if (!strcmp(sd->name, "symbol_from"))
    sort__first_dimension = SORT_SYM_FROM;
   else if (!strcmp(sd->name, "symbol_to"))
    sort__first_dimension = SORT_SYM_TO;
   else if (!strcmp(sd->name, "dso_from"))
    sort__first_dimension = SORT_DSO_FROM;
   else if (!strcmp(sd->name, "dso_to"))
    sort__first_dimension = SORT_DSO_TO;
   else if (!strcmp(sd->name, "mispredict"))
    sort__first_dimension = SORT_MISPREDICT;
  }

  list_add_tail(&sd->entry->list, &hist_entry__sort_list);
  sd->taken = 1;

  return 0;
 }
 return -ESRCH;
}
