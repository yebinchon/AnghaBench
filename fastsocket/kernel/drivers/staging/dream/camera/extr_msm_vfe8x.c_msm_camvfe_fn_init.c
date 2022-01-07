
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_camvfe_fn {int vfe_release; int vfe_disable; int vfe_config; int vfe_enable; int vfe_init; } ;


 int mutex_init (int *) ;
 int vfe_config ;
 int vfe_disable ;
 int vfe_enable ;
 int vfe_init ;
 int vfe_lock ;
 int vfe_release ;
 void* vfe_syncdata ;

void msm_camvfe_fn_init(struct msm_camvfe_fn *fptr, void *data)
{
 mutex_init(&vfe_lock);
 fptr->vfe_init = vfe_init;
 fptr->vfe_enable = vfe_enable;
 fptr->vfe_config = vfe_config;
 fptr->vfe_disable = vfe_disable;
 fptr->vfe_release = vfe_release;
 vfe_syncdata = data;
}
