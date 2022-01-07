
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcom_config {void* rf_lsflags; void* rf_lvblen; } ;
struct dlm_ls {int ls_exflags; int ls_lvblen; } ;


 void* cpu_to_le32 (int ) ;

__attribute__((used)) static void make_config(struct dlm_ls *ls, struct rcom_config *rf)
{
 rf->rf_lvblen = cpu_to_le32(ls->ls_lvblen);
 rf->rf_lsflags = cpu_to_le32(ls->ls_exflags);
}
