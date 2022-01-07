
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; int proc; } ;
typedef TYPE_1__ gdb_event ;


 int handle_file_event ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static gdb_event *
create_file_event (int fd)
{
  gdb_event *file_event_ptr;

  file_event_ptr = (gdb_event *) xmalloc (sizeof (gdb_event));
  file_event_ptr->proc = handle_file_event;
  file_event_ptr->fd = fd;
  return (file_event_ptr);
}
