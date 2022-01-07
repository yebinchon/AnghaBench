
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_3__ {int statbar_ctx_id; int statbar; } ;


 int GTK_STATUSBAR (int ) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int gtk_statusbar_pop (int ,int ) ;
 int gtk_statusbar_push (int ,int ,char*) ;
 int perf_gtk__is_active_context (TYPE_1__*) ;
 TYPE_1__* pgctx ;
 int stderr ;
 char* strchr (char*,char) ;
 scalar_t__ vasprintf (char**,char const*,int ) ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static int perf_gtk__warning_statusbar(const char *format, va_list args)
{
 char *msg, *p;

 if (!perf_gtk__is_active_context(pgctx) ||
     vasprintf(&msg, format, args) < 0) {
  fprintf(stderr, "Warning:\n");
  vfprintf(stderr, format, args);
  fprintf(stderr, "\n");
  return -1;
 }

 gtk_statusbar_pop(GTK_STATUSBAR(pgctx->statbar),
     pgctx->statbar_ctx_id);


 p = strchr(msg, '\n');
 if (p)
  *p = '\0';

 gtk_statusbar_push(GTK_STATUSBAR(pgctx->statbar),
      pgctx->statbar_ctx_id, msg);

 free(msg);
 return 0;
}
