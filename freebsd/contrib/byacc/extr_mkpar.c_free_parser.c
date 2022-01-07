
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREE (int *) ;
 int free_action_row (int ) ;
 int nstates ;
 int * parser ;

void
free_parser(void)
{
    int i;

    for (i = 0; i < nstates; i++)
 free_action_row(parser[i]);

    FREE(parser);
}
