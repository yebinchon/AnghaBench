
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct queue_elem {int lineno; int data; struct queue_elem* next; } ;
struct TYPE_2__ {int lineno; } ;




 int GET_CODE (int ) ;
 int XEXP (int ,int) ;
 char const* XSTR (int ,int) ;
 struct queue_elem* define_attr_queue ;
 TYPE_1__* define_cond_exec_queue ;
 int errors ;
 int free (char*) ;
 int message_with_line (int ,char*,...) ;
 int predicable_default ;
 char* predicable_false ;
 char* predicable_true ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static void
identify_predicable_attribute (void)
{
  struct queue_elem *elem;
  char *p_true, *p_false;
  const char *value;


  for (elem = define_attr_queue; elem ; elem = elem->next)
    if (strcmp (XSTR (elem->data, 0), "predicable") == 0)
      goto found;

  message_with_line (define_cond_exec_queue->lineno,
       "attribute `predicable' not defined");
  errors = 1;
  return;

 found:
  value = XSTR (elem->data, 1);
  p_false = xstrdup (value);
  p_true = strchr (p_false, ',');
  if (p_true == ((void*)0) || strchr (++p_true, ',') != ((void*)0))
    {
      message_with_line (elem->lineno,
    "attribute `predicable' is not a boolean");
      errors = 1;
      if (p_false)
        free (p_false);
      return;
    }
  p_true[-1] = '\0';

  predicable_true = p_true;
  predicable_false = p_false;

  switch (GET_CODE (XEXP (elem->data, 2)))
    {
    case 128:
      value = XSTR (XEXP (elem->data, 2), 0);
      break;

    case 129:
      message_with_line (elem->lineno,
    "attribute `predicable' cannot be const");
      errors = 1;
      if (p_false)
 free (p_false);
      return;

    default:
      message_with_line (elem->lineno,
    "attribute `predicable' must have a constant default");
      errors = 1;
      if (p_false)
 free (p_false);
      return;
    }

  if (strcmp (value, p_true) == 0)
    predicable_default = 1;
  else if (strcmp (value, p_false) == 0)
    predicable_default = 0;
  else
    {
      message_with_line (elem->lineno,
    "unknown value `%s' for `predicable' attribute",
    value);
      errors = 1;
      if (p_false)
 free (p_false);
    }
}
