
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dteda_msg; } ;
typedef TYPE_1__ dtrace_errdata_t ;


 int DTRACE_HANDLE_OK ;
 int error (int ) ;

__attribute__((used)) static int
errhandler(const dtrace_errdata_t *data, void *arg)
{
 error(data->dteda_msg);
 return (DTRACE_HANDLE_OK);
}
