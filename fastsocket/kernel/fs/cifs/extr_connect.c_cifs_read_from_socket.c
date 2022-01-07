
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvec {char* iov_base; unsigned int iov_len; } ;
struct TCP_Server_Info {int dummy; } ;


 int cifs_readv_from_socket (struct TCP_Server_Info*,struct kvec*,int,unsigned int) ;

int
cifs_read_from_socket(struct TCP_Server_Info *server, char *buf,
        unsigned int to_read)
{
 struct kvec iov;

 iov.iov_base = buf;
 iov.iov_len = to_read;

 return cifs_readv_from_socket(server, &iov, 1, to_read);
}
