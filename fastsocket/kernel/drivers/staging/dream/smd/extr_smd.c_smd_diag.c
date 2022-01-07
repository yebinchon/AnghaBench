
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ID_DIAG_ERR_MSG ;
 int SZ_DIAG_ERR_MSG ;
 int pr_info (char*,char*) ;
 char* smem_find (int ,int) ;

__attribute__((used)) static void smd_diag(void)
{
 char *x;

 x = smem_find(ID_DIAG_ERR_MSG, SZ_DIAG_ERR_MSG);
 if (x != 0) {
  x[SZ_DIAG_ERR_MSG - 1] = 0;
  pr_info("smem: DIAG '%s'\n", x);
 }
}
