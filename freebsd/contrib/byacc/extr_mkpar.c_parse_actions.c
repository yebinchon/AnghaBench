
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int action ;


 int * add_reductions (int,int *) ;
 int * get_shifts (int) ;

__attribute__((used)) static action *
parse_actions(int stateno)
{
    action *actions;

    actions = get_shifts(stateno);
    actions = add_reductions(stateno, actions);
    return (actions);
}
