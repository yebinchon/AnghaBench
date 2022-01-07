
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dlm_ls {int ls_dirtbl_size; } ;


 int jhash (char*,int,int ) ;

__attribute__((used)) static inline uint32_t dir_hash(struct dlm_ls *ls, char *name, int len)
{
 uint32_t val;

 val = jhash(name, len, 0);
 val &= (ls->ls_dirtbl_size - 1);

 return val;
}
