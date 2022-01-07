
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef size_t u8_t ;
typedef scalar_t__ u32_t ;
typedef scalar_t__ u16_t ;
struct dest {scalar_t__ Qtype; void* vtxq; TYPE_1__* tid_tx; } ;
typedef scalar_t__ s8_t ;
struct TYPE_9__ {size_t ppri; struct dest* (* getNext ) (int *,size_t) ;scalar_t__* Head; } ;
struct TYPE_8__ {scalar_t__ txq_threshold; int destLock; scalar_t__ aggState; int aggInitiated; } ;
struct TYPE_7__ {int size; int aggTail; int aggHead; } ;
typedef TYPE_1__* TID_TX ;


 scalar_t__ AGG_MIN_TXQL ;
 TYPE_6__ DESTQ ;
 int DbgPrint (char*) ;
 scalar_t__ TXQL ;
 int ZM_EXTERNAL_ALLOC_BUF ;
 size_t* pri ;
 struct dest* stub1 (int *,size_t) ;
 TYPE_5__* wd ;
 TYPE_1__* zfAggTxReady (int *) ;
 int zfAggTxSend (int *,int,TYPE_1__*) ;
 scalar_t__ zfAggValidTidTx (int *,TYPE_1__*) ;
 int * zfGetVtxq (int *,size_t) ;
 int zfHpGetFreeTxdCount (int *) ;
 int zfTxSendEth (int *,int *,int ,int ,int ) ;
 int zm_agg_qlen (int *,int ,int ) ;
 int zm_assert (int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfAggTxScheduler(zdev_t* dev, u8_t ScanAndClear)
{
    TID_TX tid_tx = ((void*)0);
    void* vtxq;
    struct dest* dest;
    zbuf_t* buf;
    u32_t txql, min_txql;

    u16_t txq_threshold;
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    if (!wd->aggInitiated)
    {
        return;
    }


    txql = TXQL;
    min_txql = AGG_MIN_TXQL;

    if(wd->txq_threshold)
        txq_threshold = wd->txq_threshold;
    else
        txq_threshold = AGG_MIN_TXQL;

    tid_tx = zfAggTxReady(dev);
    if (tid_tx) ScanAndClear = 0;
    while (zfHpGetFreeTxdCount(dev) > 20 && (TXQL < txq_threshold || tid_tx)) {


        u16_t i;
        u8_t ac;
        s8_t destQ_count = 0;



        for (i=0; i<4; i++) {
            if (DESTQ.Head[i]) destQ_count++;
        }
        if (0 >= destQ_count) break;

        zmw_enter_critical_section(dev);
        ac = pri[DESTQ.ppri]; DESTQ.ppri = (DESTQ.ppri + 1) % 10;
        zmw_leave_critical_section(dev);

        for (i=0; i<10; i++){
            if(DESTQ.Head[ac]) break;

            zmw_enter_critical_section(dev);
            ac = pri[DESTQ.ppri]; DESTQ.ppri = (DESTQ.ppri + 1) % 10;
            zmw_leave_critical_section(dev);
        }
        if (i == 10) break;

        zmw_enter_critical_section(dev);
        wd->destLock = 1;
        zmw_leave_critical_section(dev);

        dest = DESTQ.getNext(dev, ac);
        if (!dest) {
            zmw_enter_critical_section(dev);
            wd->destLock = 0;
            zmw_leave_critical_section(dev);

            DbgPrint("bug report! DESTQ.getNext got nothing!");
            break;
        }
        if (dest->Qtype == 0) {
            tid_tx = dest->tid_tx;



            if(tid_tx && zfAggValidTidTx(dev, tid_tx))
                tid_tx->size = zm_agg_qlen(dev, tid_tx->aggHead, tid_tx->aggTail);
            else {
                zmw_enter_critical_section(dev);
                wd->destLock = 0;
                zmw_leave_critical_section(dev);

                tid_tx = zfAggTxReady(dev);
                continue;
            }

            zmw_enter_critical_section(dev);
            wd->destLock = 0;
            zmw_leave_critical_section(dev);

            if (tid_tx && !tid_tx->size) {



            }
            else if(wd->aggState == 0){


                zfAggTxSend(dev, zfHpGetFreeTxdCount(dev), tid_tx);

            }
            else {

                break;
            }
        }
        else {
            vtxq = dest->vtxq;
            buf = zfGetVtxq(dev, ac);
            zm_assert( buf != 0 );

            zfTxSendEth(dev, buf, 0, ZM_EXTERNAL_ALLOC_BUF, 0);

        }

        tid_tx = zfAggTxReady(dev);
    }
    return;
}
