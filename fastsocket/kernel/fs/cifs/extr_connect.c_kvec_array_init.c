
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvec {size_t iov_len; size_t iov_base; } ;


 int memcpy (struct kvec*,struct kvec*,int) ;
 int min (size_t,size_t) ;

__attribute__((used)) static unsigned int
kvec_array_init(struct kvec *new, struct kvec *iov, unsigned int nr_segs,
  size_t bytes)
{
 size_t base = 0;

 while (bytes || !iov->iov_len) {
  int copy = min(bytes, iov->iov_len);

  bytes -= copy;
  base += copy;
  if (iov->iov_len == base) {
   iov++;
   nr_segs--;
   base = 0;
  }
 }
 memcpy(new, iov, sizeof(*iov) * nr_segs);
 new->iov_base += base;
 new->iov_len -= base;
 return nr_segs;
}
