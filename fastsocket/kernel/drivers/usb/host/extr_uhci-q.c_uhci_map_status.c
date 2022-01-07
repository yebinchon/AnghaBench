
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EILSEQ ;
 int ENOSR ;
 int EOVERFLOW ;
 int EPIPE ;
 int EPROTO ;
 int TD_CTRL_BABBLE ;
 int TD_CTRL_BITSTUFF ;
 int TD_CTRL_CRCTIMEO ;
 int TD_CTRL_DBUFERR ;
 int TD_CTRL_STALLED ;

__attribute__((used)) static int uhci_map_status(int status, int dir_out)
{
 if (!status)
  return 0;
 if (status & TD_CTRL_BITSTUFF)
  return -EPROTO;
 if (status & TD_CTRL_CRCTIMEO) {
  if (dir_out)
   return -EPROTO;
  else
   return -EILSEQ;
 }
 if (status & TD_CTRL_BABBLE)
  return -EOVERFLOW;
 if (status & TD_CTRL_DBUFERR)
  return -ENOSR;
 if (status & TD_CTRL_STALLED)
  return -EPIPE;
 return 0;
}
