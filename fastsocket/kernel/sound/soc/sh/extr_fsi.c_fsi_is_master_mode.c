
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsi_priv {int dummy; } ;


 int SH_FSI_IN_SLAVE_MODE ;
 int SH_FSI_OUT_SLAVE_MODE ;
 int fsi_get_info_flags (struct fsi_priv*) ;

__attribute__((used)) static int fsi_is_master_mode(struct fsi_priv *fsi, int is_play)
{
 u32 mode;
 u32 flags = fsi_get_info_flags(fsi);

 mode = is_play ? SH_FSI_OUT_SLAVE_MODE : SH_FSI_IN_SLAVE_MODE;






 return (mode & flags) != mode;
}
