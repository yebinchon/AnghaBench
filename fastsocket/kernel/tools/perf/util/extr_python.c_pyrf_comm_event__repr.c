
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int comm; int tid; int pid; } ;
struct TYPE_4__ {TYPE_1__ comm; } ;
struct pyrf_event {TYPE_2__ event; } ;
typedef int PyObject ;


 int * PyString_FromFormat (char*,int ,int ,int ) ;

__attribute__((used)) static PyObject *pyrf_comm_event__repr(struct pyrf_event *pevent)
{
 return PyString_FromFormat("{ type: comm, pid: %u, tid: %u, comm: %s }",
       pevent->event.comm.pid,
       pevent->event.comm.tid,
       pevent->event.comm.comm);
}
