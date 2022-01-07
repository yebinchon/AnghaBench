
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blksz ;
 scalar_t__ buf ;
 int buf_flush (int ) ;
 scalar_t__ bufend ;
 scalar_t__ bufpt ;
 int memset (scalar_t__,int ,scalar_t__) ;

void
wr_fin(void)
{
 if (bufpt > buf) {
  memset(bufpt, 0, bufend - bufpt);
  bufpt = bufend;
  (void)buf_flush(blksz);
 }
}
