
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int args; scalar_t__* argtags; int name; } ;
typedef TYPE_1__ bucket ;
struct TYPE_9__ {int args; scalar_t__* argtags; } ;


 int L_PAREN ;
 int NO_SPACE (char*) ;
 int assert (int) ;
 int can_elide_arg (char**,scalar_t__) ;
 char* copy_args (int*) ;
 int* cptr ;
 int end_rule () ;
 int expand_items () ;
 int free (char*) ;
 TYPE_1__* get_literal () ;
 TYPE_1__* get_name () ;
 char* insert_arg_rule (char*,scalar_t__) ;
 int insert_empty_rule () ;
 scalar_t__ last_was_action ;
 void* lineno ;
 int maxitems ;
 int nextc () ;
 int nitems ;
 size_t nrules ;
 int parse_arginfo (TYPE_1__*,char*,int) ;
 TYPE_1__** pitem ;
 TYPE_3__** plhs ;
 void* rescan_lineno ;
 int start_rule (TYPE_1__*,int) ;
 int wrong_number_args_warning (char*,int ) ;
 int wrong_type_for_arg_warning (int,int ) ;

__attribute__((used)) static void
add_symbol(void)
{
    int c;
    bucket *bp;
    int s_lineno = lineno;





    c = *cptr;
    if (c == '\'' || c == '"')
 bp = get_literal();
    else
 bp = get_name();

    c = nextc();
    rescan_lineno = lineno;
    if (c == ':')
    {
 end_rule();
 start_rule(bp, s_lineno);



 ++cptr;
 return;
    }

    if (last_was_action)
 insert_empty_rule();
    last_was_action = 0;
    if (++nitems > maxitems)
 expand_items();
    pitem[nitems - 1] = bp;
}
