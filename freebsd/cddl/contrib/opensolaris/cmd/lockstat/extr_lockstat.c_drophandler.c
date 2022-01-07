
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* dtdda_msg; } ;
typedef TYPE_1__ dtrace_dropdata_t ;


 int DTRACE_HANDLE_OK ;
 int fprintf (int ,char*,char*) ;
 int g_dropped ;
 int stderr ;

__attribute__((used)) static int
drophandler(const dtrace_dropdata_t *data, void *arg)
{
 g_dropped++;
 (void) fprintf(stderr, "lockstat: warning: %s", data->dtdda_msg);
 return (DTRACE_HANDLE_OK);
}
