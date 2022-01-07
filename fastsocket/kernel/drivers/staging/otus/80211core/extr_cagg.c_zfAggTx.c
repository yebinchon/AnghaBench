
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;
struct TYPE_2__ {int aggInitiated; } ;
typedef int * TID_TX ;


 int ZM_ERR_TX_BUFFER_UNAVAILABLE ;
 TYPE_1__* wd ;
 int zfAggGetSta (int *,int *) ;
 int zfAggTxEnqueue (int *,int *,int,int *) ;
 int * zfAggTxGetQueue (int *,int,int) ;
 int * zfAggTxNewQueue (int *,int,int,int *) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfAggTx(zdev_t* dev, zbuf_t* buf, u16_t tid)
{
    u16_t aid;



    TID_TX tid_tx;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    if(!wd->aggInitiated)
    {
        return ZM_ERR_TX_BUFFER_UNAVAILABLE;
    }

    aid = zfAggGetSta(dev, buf);



    if (0xffff == aid)
    {




        return ZM_ERR_TX_BUFFER_UNAVAILABLE;
    }





    tid_tx = zfAggTxGetQueue(dev, aid, tid);





    if (tid_tx != ((void*)0))
    {





        if (0)
        {





            zmw_enter_critical_section(dev);



            zmw_leave_critical_section(dev);

        }

        return zfAggTxEnqueue(dev, buf, aid, tid_tx);

    }
    else
    {






        if (1)
        {




            tid_tx = zfAggTxNewQueue(dev, aid, tid, buf);



            if (tid_tx)
            {
                return zfAggTxEnqueue(dev, buf, aid, tid_tx);

            }
            else
            {




                return ZM_ERR_TX_BUFFER_UNAVAILABLE;
            }
        }
        else
        {




            return ZM_ERR_TX_BUFFER_UNAVAILABLE;
        }
    }



}
