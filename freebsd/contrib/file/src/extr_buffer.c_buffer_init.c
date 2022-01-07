
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct buffer {int fd; size_t flen; scalar_t__ elen; int * ebuf; scalar_t__ eoff; void const* fbuf; int st; } ;


 int fstat (int,int *) ;
 int memcpy (int *,struct stat const*,int) ;
 int memset (int *,int ,int) ;

void
buffer_init(struct buffer *b, int fd, const struct stat *st, const void *data,
    size_t len)
{
 b->fd = fd;
 if (st)
  memcpy(&b->st, st, sizeof(b->st));
 else if (b->fd == -1 || fstat(b->fd, &b->st) == -1)
  memset(&b->st, 0, sizeof(b->st));
 b->fbuf = data;
 b->flen = len;
 b->eoff = 0;
 b->ebuf = ((void*)0);
 b->elen = 0;
}
