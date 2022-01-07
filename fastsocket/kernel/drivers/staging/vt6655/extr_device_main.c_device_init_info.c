
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_8__ {int nTxQueue; int io_size; int chip_id; } ;
struct TYPE_7__ {int multicast_limit; int lock; int nTxQueues; int io_size; int chip_id; struct pci_dev* pcid; struct TYPE_7__* prev; struct TYPE_7__* next; } ;
typedef TYPE_1__* PSDevice ;
typedef TYPE_2__* PCHIP_INFO ;
typedef int DEVICE_INFO ;
typedef int BOOL ;


 int TRUE ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* pDevice_Infos ;
 int spin_lock_init (int *) ;

__attribute__((used)) static BOOL device_init_info(struct pci_dev* pcid, PSDevice* ppDevice,
    PCHIP_INFO pChip_info) {

    PSDevice p;

    memset(*ppDevice,0,sizeof(DEVICE_INFO));

    if (pDevice_Infos == ((void*)0)) {
        pDevice_Infos =*ppDevice;
    }
    else {
        for (p=pDevice_Infos;p->next!=((void*)0);p=p->next)
            do {} while (0);
        p->next = *ppDevice;
        (*ppDevice)->prev = p;
    }

    (*ppDevice)->pcid = pcid;
    (*ppDevice)->chip_id = pChip_info->chip_id;
    (*ppDevice)->io_size = pChip_info->io_size;
    (*ppDevice)->nTxQueues = pChip_info->nTxQueue;
    (*ppDevice)->multicast_limit =32;

    spin_lock_init(&((*ppDevice)->lock));

    return TRUE;
}
