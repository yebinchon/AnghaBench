
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct uea_softc {int data1; int data; } ;


 int E4_MAKEFUNCTION (int ,int ,int) ;
 int E4_MEMACCESS ;
 int E4_REQUESTREAD ;
 int INS_TO_USBDEV (struct uea_softc*) ;
 int uea_cmv_e4 (struct uea_softc*,int ,int ,int ,int ,int ) ;
 int uea_err (int ,char*,int) ;

__attribute__((used)) static inline int uea_read_cmv_e4(struct uea_softc *sc,
  u8 size, u16 group, u16 address, u16 offset, u32 *data)
{
 int ret = uea_cmv_e4(sc, E4_MAKEFUNCTION(E4_MEMACCESS, E4_REQUESTREAD, size),
     group, address, offset, 0);
 if (ret < 0)
  uea_err(INS_TO_USBDEV(sc),
   "reading cmv failed with error %d\n", ret);
 else {
   *data = sc->data;

  if (size > 2)
   *(data + 1) = sc->data1;
 }
 return ret;
}
