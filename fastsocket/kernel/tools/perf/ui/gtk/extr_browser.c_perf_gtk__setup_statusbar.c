
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int statbar_ctx_id; int * statbar; } ;
typedef int GtkWidget ;


 int GTK_STATUSBAR (int *) ;
 unsigned int gtk_statusbar_get_context_id (int ,char*) ;
 int * gtk_statusbar_new () ;
 TYPE_1__* pgctx ;

__attribute__((used)) static GtkWidget *perf_gtk__setup_statusbar(void)
{
 GtkWidget *stbar;
 unsigned ctxid;

 stbar = gtk_statusbar_new();

 ctxid = gtk_statusbar_get_context_id(GTK_STATUSBAR(stbar),
          "perf report");
 pgctx->statbar = stbar;
 pgctx->statbar_ctx_id = ctxid;

 return stbar;
}
