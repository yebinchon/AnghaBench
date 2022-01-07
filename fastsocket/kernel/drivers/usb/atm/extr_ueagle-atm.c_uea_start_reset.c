
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct uea_stats {int dummy; } ;
struct TYPE_5__ {int function; } ;
struct TYPE_4__ {int function; } ;
struct TYPE_6__ {TYPE_2__ e1; TYPE_1__ e4; } ;
struct uea_softc {int booting; int (* send_cmvs ) (struct uea_softc*) ;scalar_t__ reset; int task; int work_q; scalar_t__ ovl; scalar_t__ pageno; TYPE_3__ cmv_dsc; int stats; scalar_t__ cmv_ack; } ;


 int ATM_PHY_SIG_LOST ;
 int E1_ADSLDIRECTIVE ;
 int E1_MAKEFUNCTION (int ,int ) ;
 int E1_MODEMREADY ;
 int E4_ADSLDIRECTIVE ;
 int E4_MAKEFUNCTION (int ,int ,int) ;
 int E4_MODEMREADY ;
 scalar_t__ EAGLE_IV ;
 int INS_TO_USBDEV (struct uea_softc*) ;
 int UEA_BOOT_IDMA ;
 scalar_t__ UEA_CHIP_VERSION (struct uea_softc*) ;
 int UEA_END_RESET ;
 int UEA_LOOPBACK_ON ;
 int UEA_MPRX_MAILBOX ;
 int UEA_MPTX_MAILBOX ;
 int UEA_SET_2183_DATA ;
 int UEA_SET_MODE ;
 int UEA_START_RESET ;
 int UEA_SWAP_MAILBOX ;
 int UPDATE_ATM_STAT (int ,int ) ;
 int memset (int *,int ,int) ;
 int msecs_to_jiffies (int) ;
 int queue_work (int ,int *) ;
 int signal ;
 int stub1 (struct uea_softc*) ;
 int uea_enters (int ) ;
 int uea_info (int ,char*) ;
 int uea_leaves (int ) ;
 int uea_request (struct uea_softc*,int ,int ,int,int *) ;
 int uea_vdbg (int ,char*) ;
 int uea_wait (struct uea_softc*,int ,int ) ;
 int wait_cmv_ack (struct uea_softc*) ;

__attribute__((used)) static int uea_start_reset(struct uea_softc *sc)
{
 u16 zero = 0;
 int ret;

 uea_enters(INS_TO_USBDEV(sc));
 uea_info(INS_TO_USBDEV(sc), "(re)booting started\n");


 sc->booting = 1;




 sc->cmv_ack = 0;
 UPDATE_ATM_STAT(signal, ATM_PHY_SIG_LOST);


 memset(&sc->stats, 0, sizeof(struct uea_stats));


 uea_request(sc, UEA_SET_MODE, UEA_LOOPBACK_ON, 0, ((void*)0));
 uea_request(sc, UEA_SET_MODE, UEA_BOOT_IDMA, 0, ((void*)0));


 uea_request(sc, UEA_SET_MODE, UEA_START_RESET, 0, ((void*)0));


 ret = uea_wait(sc, 0, msecs_to_jiffies(100));
 if (ret < 0)
  return ret;


 uea_request(sc, UEA_SET_MODE, UEA_END_RESET, 0, ((void*)0));

 if (UEA_CHIP_VERSION(sc) != EAGLE_IV) {

  uea_request(sc, UEA_SET_2183_DATA, UEA_MPTX_MAILBOX, 2, &zero);
  uea_request(sc, UEA_SET_2183_DATA, UEA_MPRX_MAILBOX, 2, &zero);
  uea_request(sc, UEA_SET_2183_DATA, UEA_SWAP_MAILBOX, 2, &zero);
 }

 ret = uea_wait(sc, 0, msecs_to_jiffies(1000));
 if (ret < 0)
  return ret;

 if (UEA_CHIP_VERSION(sc) == EAGLE_IV)
  sc->cmv_dsc.e4.function = E4_MAKEFUNCTION(E4_ADSLDIRECTIVE, E4_MODEMREADY, 1);
 else
  sc->cmv_dsc.e1.function = E1_MAKEFUNCTION(E1_ADSLDIRECTIVE, E1_MODEMREADY);


 sc->booting = 0;


 sc->pageno = 0;
 sc->ovl = 0;
 queue_work(sc->work_q, &sc->task);


 ret = wait_cmv_ack(sc);
 if (ret < 0)
  return ret;

 uea_vdbg(INS_TO_USBDEV(sc), "Ready CMV received\n");

 ret = sc->send_cmvs(sc);
 if (ret < 0)
  return ret;

 sc->reset = 0;
 uea_leaves(INS_TO_USBDEV(sc));
 return ret;
}
