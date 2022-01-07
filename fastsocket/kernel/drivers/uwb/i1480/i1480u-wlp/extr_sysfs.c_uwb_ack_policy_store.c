
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_options {int def_tx_hdr; } ;
typedef int ssize_t ;


 int EINVAL ;
 unsigned int UWB_ACK_B_REQ ;
 int sscanf (char const*,char*,unsigned int*) ;
 int wlp_tx_hdr_set_ack_policy (int *,unsigned int) ;

ssize_t uwb_ack_policy_store(struct wlp_options *options,
        const char *buf, size_t size)
{
 ssize_t result;
 unsigned value;

 result = sscanf(buf, "%u\n", &value);
 if (result != 1 || value > UWB_ACK_B_REQ) {
  result = -EINVAL;
  goto out;
 }
 wlp_tx_hdr_set_ack_policy(&options->def_tx_hdr, value);
 result = 0;
out:
 return result < 0 ? result : size;
}
