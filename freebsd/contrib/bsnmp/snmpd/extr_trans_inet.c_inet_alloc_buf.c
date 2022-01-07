
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_input {int buflen; int fd; int * buf; } ;
typedef int drop_buf ;


 int * buf_alloc (int ) ;
 int buf_size (int ) ;
 int recvfrom (int ,char*,int,int ,int *,int *) ;

__attribute__((used)) static int
inet_alloc_buf(struct port_input *pi)
{
 char drop_buf[2000];

 if (pi->buf == ((void*)0)) {
  if ((pi->buf = buf_alloc(0)) == ((void*)0)) {
   (void)recvfrom(pi->fd, drop_buf, sizeof(drop_buf),
       0, ((void*)0), ((void*)0));
   return (-1);
  }
  pi->buflen = buf_size(0);
 }
 return (0);
}
