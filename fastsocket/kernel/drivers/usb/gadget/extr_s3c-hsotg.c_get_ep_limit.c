
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int maxpacket; } ;
struct s3c_hsotg_ep {int index; TYPE_1__ ep; scalar_t__ dir_in; } ;


 int S3C_DIEPTSIZ0_PktCnt_LIMIT ;
 int S3C_DxEPTSIZ_PktCnt_LIMIT ;
 int S3C_DxEPTSIZ_XferSize_LIMIT ;

__attribute__((used)) static unsigned get_ep_limit(struct s3c_hsotg_ep *hs_ep)
{
 int index = hs_ep->index;
 unsigned maxsize;
 unsigned maxpkt;

 if (index != 0) {
  maxsize = S3C_DxEPTSIZ_XferSize_LIMIT + 1;
  maxpkt = S3C_DxEPTSIZ_PktCnt_LIMIT + 1;
 } else {
  if (hs_ep->dir_in) {

   maxsize = 64+64+1;
   maxpkt = S3C_DIEPTSIZ0_PktCnt_LIMIT + 1;
  } else {
   maxsize = 0x3f;
   maxpkt = 2;
  }
 }


 maxpkt--;
 maxsize--;




 if ((maxpkt * hs_ep->ep.maxpacket) < maxsize)
  maxsize = maxpkt * hs_ep->ep.maxpacket;

 return maxsize;
}
