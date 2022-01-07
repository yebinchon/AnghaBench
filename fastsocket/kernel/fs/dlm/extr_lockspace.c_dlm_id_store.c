
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_global_id; } ;
typedef size_t ssize_t ;


 int simple_strtoul (char const*,int *,int ) ;

__attribute__((used)) static ssize_t dlm_id_store(struct dlm_ls *ls, const char *buf, size_t len)
{
 ls->ls_global_id = simple_strtoul(buf, ((void*)0), 0);
 return len;
}
