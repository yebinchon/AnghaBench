
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {scalar_t__ p; scalar_t__ end; } ;


 int dprintk (char*,char const*,scalar_t__) ;

__attribute__((used)) static void print_overflow_msg(const char *func, const struct xdr_stream *xdr)
{
 dprintk("nfs: %s: prematurely hit end of receive buffer. "
  "Remaining buffer length is %tu words.\n",
  func, xdr->end - xdr->p);
}
