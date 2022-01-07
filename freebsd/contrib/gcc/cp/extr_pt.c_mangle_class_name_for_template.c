
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct obstack {int dummy; } ;


 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 int DECL_NAME (scalar_t__) ;
 char* IDENTIFIER_POINTER (int ) ;
 scalar_t__ INNERMOST_TEMPLATE_ARGS (scalar_t__) ;
 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ PARM_DECL ;
 scalar_t__ TEMPLATE_DECL ;
 int TFF_CHASE_TYPEDEF ;
 int TFF_PLAIN_IDENTIFIER ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TREE_VEC_ELT (scalar_t__,int) ;
 int TREE_VEC_LENGTH (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 int cat (char const*) ;
 int ccat (char) ;
 char* decl_as_string (scalar_t__,int ) ;
 scalar_t__ error_mark_node ;
 char* expr_as_string (scalar_t__,int ) ;
 int gcc_assert (int) ;
 int gcc_obstack_init (struct obstack*) ;
 scalar_t__ obstack_alloc (struct obstack*,int) ;
 scalar_t__ obstack_base (struct obstack*) ;
 int obstack_blank_fast (struct obstack*,int) ;
 int obstack_free (struct obstack*,char*) ;
 char* obstack_next_free (struct obstack*) ;
 char* type_as_string (scalar_t__,int ) ;

__attribute__((used)) static char *
mangle_class_name_for_template (const char* name, tree parms, tree arglist)
{
  static struct obstack scratch_obstack;
  static char *scratch_firstobj;
  int i, nparms;

  if (!scratch_firstobj)
    gcc_obstack_init (&scratch_obstack);
  else
    obstack_free (&scratch_obstack, scratch_firstobj);
  scratch_firstobj = (char *) obstack_alloc (&scratch_obstack, 1);




  obstack_grow (&scratch_obstack, (name), strlen (name));
  obstack_1grow (&scratch_obstack, ('<'));;
  nparms = TREE_VEC_LENGTH (parms);
  arglist = INNERMOST_TEMPLATE_ARGS (arglist);
  gcc_assert (nparms == TREE_VEC_LENGTH (arglist));
  for (i = 0; i < nparms; i++)
    {
      tree parm;
      tree arg;

      parm = TREE_VALUE (TREE_VEC_ELT (parms, i));
      arg = TREE_VEC_ELT (arglist, i);

      if (parm == error_mark_node)
 continue;

      if (i)
 obstack_1grow (&scratch_obstack, (','));;

      if (TREE_CODE (parm) == TYPE_DECL)
 {
   obstack_grow (&scratch_obstack, (type_as_string (arg, TFF_CHASE_TYPEDEF)), strlen (type_as_string (arg, TFF_CHASE_TYPEDEF)));
   continue;
 }
      else if (TREE_CODE (parm) == TEMPLATE_DECL)
 {
   if (TREE_CODE (arg) == TEMPLATE_DECL)
     {


       tree context = DECL_CONTEXT (arg);
       if (context)
  {


    gcc_assert (TREE_CODE (context) == NAMESPACE_DECL
         || CLASS_TYPE_P (context));
    obstack_grow (&scratch_obstack, (decl_as_string (DECL_CONTEXT (arg), TFF_PLAIN_IDENTIFIER)), strlen (decl_as_string (DECL_CONTEXT (arg), TFF_PLAIN_IDENTIFIER)));

    obstack_grow (&scratch_obstack, ("::"), strlen ("::"));
  }
       obstack_grow (&scratch_obstack, (IDENTIFIER_POINTER (DECL_NAME (arg))), strlen (IDENTIFIER_POINTER (DECL_NAME (arg))));
     }
   else

     obstack_grow (&scratch_obstack, (type_as_string (arg, TFF_CHASE_TYPEDEF)), strlen (type_as_string (arg, TFF_CHASE_TYPEDEF)));
   continue;
 }
      else
 gcc_assert (TREE_CODE (parm) == PARM_DECL);



      obstack_grow (&scratch_obstack, (expr_as_string (arg, TFF_PLAIN_IDENTIFIER)), strlen (expr_as_string (arg, TFF_PLAIN_IDENTIFIER)));
    }
  {
    char *bufp = obstack_next_free (&scratch_obstack);
    int offset = 0;
    while (bufp[offset - 1] == ' ')
      offset--;
    obstack_blank_fast (&scratch_obstack, offset);


    if (bufp[offset - 1] == '>')
      obstack_1grow (&scratch_obstack, (' '));;
  }
  obstack_1grow (&scratch_obstack, ('>'));;
  obstack_1grow (&scratch_obstack, ('\0'));;
  return (char *) obstack_base (&scratch_obstack);
}
