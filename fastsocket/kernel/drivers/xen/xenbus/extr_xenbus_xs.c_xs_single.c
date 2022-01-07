
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_transaction {int dummy; } ;
struct kvec {scalar_t__ iov_len; void* iov_base; } ;
typedef enum xsd_sockmsg_type { ____Placeholder_xsd_sockmsg_type } xsd_sockmsg_type ;


 scalar_t__ strlen (char const*) ;
 void* xs_talkv (struct xenbus_transaction,int,struct kvec*,int,unsigned int*) ;

__attribute__((used)) static void *xs_single(struct xenbus_transaction t,
         enum xsd_sockmsg_type type,
         const char *string,
         unsigned int *len)
{
 struct kvec iovec;

 iovec.iov_base = (void *)string;
 iovec.iov_len = strlen(string) + 1;
 return xs_talkv(t, type, &iovec, 1, len);
}
