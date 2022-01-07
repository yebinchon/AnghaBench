
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ class; int name; } ;
typedef TYPE_1__ bucket ;


 int EOF ;
 scalar_t__ TERM ;
 int cptr ;
 TYPE_1__* get_name () ;
 TYPE_1__* goal ;
 int isalpha (int) ;
 int line ;
 int lineno ;
 int nextc () ;
 int restarted_warning () ;
 int syntax_error (int ,int ,int ) ;
 int terminal_start (int ) ;
 int unexpected_EOF () ;

__attribute__((used)) static void
declare_start(void)
{
    int c;
    bucket *bp;

    c = nextc();
    if (c == EOF)
 unexpected_EOF();
    if (!isalpha(c) && c != '_' && c != '.' && c != '$')
 syntax_error(lineno, line, cptr);
    bp = get_name();
    if (bp->class == TERM)
 terminal_start(bp->name);
    if (goal && goal != bp)
 restarted_warning();
    goal = bp;
}
