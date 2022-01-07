
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wlp_options {int pca_base_priority; int def_tx_hdr; } ;
typedef int ssize_t ;


 int EINVAL ;
 int WLP_DRP ;
 int sscanf (char const*,char*,int*) ;
 int wlp_tx_hdr_delivery_id_type (int *) ;
 int wlp_tx_hdr_set_delivery_id_type (int *,int) ;

ssize_t uwb_pca_base_priority_store(struct wlp_options *options,
        const char *buf, size_t size)
{
 ssize_t result = -EINVAL;
 u8 pca_base_priority;

 result = sscanf(buf, "%hhu\n", &pca_base_priority);
 if (result != 1) {
  result = -EINVAL;
  goto out;
 }
 result = -EINVAL;
 if (pca_base_priority >= 8)
  goto out;
 options->pca_base_priority = pca_base_priority;

 if (result >= 0 && (wlp_tx_hdr_delivery_id_type(&options->def_tx_hdr) & WLP_DRP) == 0)
  wlp_tx_hdr_set_delivery_id_type(&options->def_tx_hdr, options->pca_base_priority);
 result = 0;
out:
 return result < 0 ? result : size;
}
