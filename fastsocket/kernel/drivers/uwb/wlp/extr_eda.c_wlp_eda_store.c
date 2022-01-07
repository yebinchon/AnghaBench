
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wlp_eda {int dummy; } ;
struct wlp {int wss; struct wlp_eda eda; } ;
struct uwb_dev_addr {int * data; } ;
typedef int ssize_t ;


 int EEXIST ;
 int EINVAL ;
 int ENOSYS ;
 int sscanf (char const*,char*,int *,int *,int *,int *,int *,int *,int *,int *,int *,unsigned int*) ;
 int wlp_eda_create_node (struct wlp_eda*,int *,struct uwb_dev_addr*) ;
 int wlp_eda_update_node (struct wlp_eda*,struct uwb_dev_addr*,int *,int *,int ,unsigned int) ;

ssize_t wlp_eda_store(struct wlp *wlp, const char *buf, size_t size)
{
 ssize_t result;
 struct wlp_eda *eda = &wlp->eda;
 u8 eth_addr[6];
 struct uwb_dev_addr dev_addr;
 u8 tag;
 unsigned state;

 result = sscanf(buf, "%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx "
   "%02hhx:%02hhx %02hhx %u\n",
   &eth_addr[0], &eth_addr[1],
   &eth_addr[2], &eth_addr[3],
   &eth_addr[4], &eth_addr[5],
   &dev_addr.data[1], &dev_addr.data[0], &tag, &state);
 switch (result) {
 case 6:

  result = -ENOSYS;
  break;
 case 10:
  state = state >= 1 ? 1 : 0;
  result = wlp_eda_create_node(eda, eth_addr, &dev_addr);
  if (result < 0 && result != -EEXIST)
   goto error;

  result = wlp_eda_update_node(eda, &dev_addr, &wlp->wss,
          eth_addr, tag, state);
  if (result < 0)
   goto error;
  break;
 default:
  result = -EINVAL;
 }
error:
 return result < 0 ? result : size;
}
