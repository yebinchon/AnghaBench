
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct uea_softc {int dummy; } ;


 int E4_MAKEFUNCTION (int ,int ,int ) ;
 int E4_MEMACCESS ;
 int E4_REQUESTWRITE ;
 int INS_TO_USBDEV (struct uea_softc*) ;
 int uea_cmv_e4 (struct uea_softc*,int ,int ,int ,int ,int ) ;
 int uea_err (int ,char*,int) ;

__attribute__((used)) static inline int uea_write_cmv_e4(struct uea_softc *sc,
  u8 size, u16 group, u16 address, u16 offset, u32 data)
{
 int ret = uea_cmv_e4(sc, E4_MAKEFUNCTION(E4_MEMACCESS, E4_REQUESTWRITE, size),
     group, address, offset, data);
 if (ret < 0)
  uea_err(INS_TO_USBDEV(sc),
   "writing cmv failed with error %d\n", ret);

 return ret;
}
