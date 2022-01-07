
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_options {int def_tx_hdr; } ;
typedef int ssize_t ;


 int EINVAL ;
 int sscanf (char const*,char*,unsigned int*) ;
 int wlp_tx_hdr_set_rts_cts (int *,int) ;

ssize_t uwb_rts_cts_store(struct wlp_options *options,
     const char *buf, size_t size)
{
 ssize_t result;
 unsigned value;

 result = sscanf(buf, "%u\n", &value);
 if (result != 1) {
  result = -EINVAL;
  goto out;
 }
 result = -EINVAL;
 wlp_tx_hdr_set_rts_cts(&options->def_tx_hdr, !!value);
 result = 0;
out:
 return result < 0 ? result : size;
}
