
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dtdda_msg; } ;
typedef TYPE_1__ dtrace_dropdata_t ;


 int DTRACE_HANDLE_OK ;
 int error (int ) ;

__attribute__((used)) static int
drophandler(const dtrace_dropdata_t *data, void *arg)
{
 error(data->dtdda_msg);
 return (DTRACE_HANDLE_OK);
}
