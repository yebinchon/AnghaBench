
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_input {int fd; int * buf; int * id; } ;


 int close (int) ;
 int fd_deselect (int *) ;
 int free (int *) ;

void
snmpd_input_close(struct port_input *pi)
{
 if (pi->id != ((void*)0)) {
  fd_deselect(pi->id);
  pi->id = ((void*)0);
 }
 if (pi->fd >= 0) {
  (void)close(pi->fd);
  pi->fd = -1;
 }
 if (pi->buf != ((void*)0)) {
  free(pi->buf);
  pi->buf = ((void*)0);
 }
}
