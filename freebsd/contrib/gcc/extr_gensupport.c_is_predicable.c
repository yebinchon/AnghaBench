
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_elem {int lineno; int data; } ;
typedef int rtx ;
typedef int rtvec ;


 int ATTR ;
 int CONST_STRING ;
 int GET_CODE (int ) ;
 int GET_NUM_ELEM (int ) ;
 int RTVEC_ELT (int ,int) ;



 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 char const* XSTR (int ,int) ;
 int XVEC (int ,int) ;
 int errors ;
 int gcc_unreachable () ;
 int message_with_line (int ,char*,...) ;
 int predicable_default ;
 char* predicable_false ;
 char* predicable_true ;
 int * strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
is_predicable (struct queue_elem *elem)
{
  rtvec vec = XVEC (elem->data, 4);
  const char *value;
  int i;

  if (! vec)
    return predicable_default;

  for (i = GET_NUM_ELEM (vec) - 1; i >= 0; --i)
    {
      rtx sub = RTVEC_ELT (vec, i);
      switch (GET_CODE (sub))
 {
 case 129:
   if (strcmp (XSTR (sub, 0), "predicable") == 0)
     {
       value = XSTR (sub, 1);
       goto found;
     }
   break;

 case 128:
   if (strcmp (XSTR (sub, 0), "predicable") == 0)
     {
       message_with_line (elem->lineno,
     "multiple alternatives for `predicable'");
       errors = 1;
       return 0;
     }
   break;

 case 130:
   if (GET_CODE (SET_DEST (sub)) != ATTR
       || strcmp (XSTR (SET_DEST (sub), 0), "predicable") != 0)
     break;
   sub = SET_SRC (sub);
   if (GET_CODE (sub) == CONST_STRING)
     {
       value = XSTR (sub, 0);
       goto found;
     }




   message_with_line (elem->lineno,
        "non-constant value for `predicable'");
   errors = 1;
   return 0;

 default:
   gcc_unreachable ();
 }
    }

  return predicable_default;

 found:




  if (strchr (value, ',') != ((void*)0))
    {
      message_with_line (elem->lineno,
    "multiple alternatives for `predicable'");
      errors = 1;
      return 0;
    }


  if (strcmp (value, predicable_true) == 0)
    return 1;
  if (strcmp (value, predicable_false) == 0)
    return 0;

  message_with_line (elem->lineno,
       "unknown value `%s' for `predicable' attribute",
       value);
  errors = 1;
  return 0;
}
