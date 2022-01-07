
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int labelent_t ;



__attribute__((used)) static int
tdata_label_top_cb(void *data, void *arg)
{
 labelent_t *le = data;
 labelent_t **topp = arg;

 *topp = le;

 return (1);
}
