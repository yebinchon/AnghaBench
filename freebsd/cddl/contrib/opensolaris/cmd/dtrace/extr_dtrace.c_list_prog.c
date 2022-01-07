
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dtrace_stmt_f ;
typedef int dtrace_ecbdesc_t ;
struct TYPE_3__ {int dc_prog; } ;
typedef TYPE_1__ dtrace_cmd_t ;


 int dtrace_stmt_iter (int ,int ,int *,int **) ;
 int g_dtp ;
 scalar_t__ list_stmt ;

__attribute__((used)) static void
list_prog(const dtrace_cmd_t *dcp)
{
 dtrace_ecbdesc_t *last = ((void*)0);

 (void) dtrace_stmt_iter(g_dtp, dcp->dc_prog,
     (dtrace_stmt_f *)list_stmt, &last);
}
