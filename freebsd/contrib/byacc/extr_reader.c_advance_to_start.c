
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ class; int name; } ;
typedef TYPE_1__ bucket ;


 int EOF ;
 int L_PAREN ;

 int NO_SPACE (char*) ;

 scalar_t__ TERM ;

 char* copy_args (int*) ;
 int copy_text () ;
 char* cptr ;
 int declare_start () ;
 TYPE_1__* get_name () ;
 TYPE_1__* goal ;
 int isalpha (int) ;
 int keyword () ;
 int line ;
 void* lineno ;
 int nextc () ;
 int no_grammar () ;
 int parse_arginfo (TYPE_1__*,char*,int) ;
 void* rescan_lineno ;
 int start_rule (TYPE_1__*,int) ;
 int syntax_error (void*,int ,char*) ;
 int terminal_start (int ) ;
 int unexpected_EOF () ;

__attribute__((used)) static void
advance_to_start(void)
{
    int c;
    bucket *bp;
    char *s_cptr;
    int s_lineno;





    for (;;)
    {
 c = nextc();
 if (c != '%')
     break;
 s_cptr = cptr;
 switch (keyword())
 {
 case 130:
     no_grammar();

 case 128:
     copy_text();
     break;

 case 129:
     declare_start();
     break;

 default:
     syntax_error(lineno, line, s_cptr);
 }
    }

    c = nextc();
    if (!isalpha(c) && c != '_' && c != '.' && c != '_')
 syntax_error(lineno, line, cptr);
    bp = get_name();
    if (goal == 0)
    {
 if (bp->class == TERM)
     terminal_start(bp->name);
 goal = bp;
    }

    s_lineno = lineno;
    c = nextc();
    if (c == EOF)
 unexpected_EOF();
    rescan_lineno = lineno;
    if (c != ':')
 syntax_error(lineno, line, cptr);
    start_rule(bp, s_lineno);



    ++cptr;
}
