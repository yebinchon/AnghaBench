
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pattern; int len; } ;
struct filter_pred {int op; TYPE_1__ regex; int field_name; } ;


 int GFP_KERNEL ;
 int kfree (struct filter_pred*) ;
 int kstrdup (char*,int ) ;
 struct filter_pred* kzalloc (int,int ) ;
 int strcpy (int ,char*) ;
 int strlen (int ) ;

__attribute__((used)) static struct filter_pred *create_pred(int op, char *operand1, char *operand2)
{
 struct filter_pred *pred;

 pred = kzalloc(sizeof(*pred), GFP_KERNEL);
 if (!pred)
  return ((void*)0);

 pred->field_name = kstrdup(operand1, GFP_KERNEL);
 if (!pred->field_name) {
  kfree(pred);
  return ((void*)0);
 }

 strcpy(pred->regex.pattern, operand2);
 pred->regex.len = strlen(pred->regex.pattern);

 pred->op = op;

 return pred;
}
