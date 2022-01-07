
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_options {int pca_base_priority; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

ssize_t uwb_pca_base_priority_show(const struct wlp_options *options,
       char *buf)
{
 return sprintf(buf, "%u\n",
         options->pca_base_priority);
}
