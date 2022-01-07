
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int UINT ;
typedef scalar_t__ DWORD_PTR ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CB_AL2230_INIT_SEQ ;
 int CB_AL7230_INIT_SEQ ;
 int CB_MAX_CHANNEL_24G ;
 int FALSE ;
 scalar_t__ MAC_REG_MISCFFNDEX ;
 int MACvSetMISCFifo (scalar_t__,int ,int ) ;
 scalar_t__ MAKEWORD (int,int) ;
 int MISCFIFO_SYNDATASIZE ;
 int MISCFIFO_SYNDATA_IDX ;
 int MISCFIFO_SYNINFO_IDX ;




 int TRUE ;
 int VNSvOutPortW (scalar_t__,int ) ;
 int * dwAL2230ChannelTable0 ;
 int * dwAL2230ChannelTable1 ;
 int * dwAL2230InitTable ;
 int * dwAL7230ChannelTable0 ;
 int * dwAL7230ChannelTable1 ;
 int * dwAL7230ChannelTable2 ;
 int * dwAL7230InitTable ;
 int * dwAL7230InitTableAMode ;

BOOL RFvWriteWakeProgSyn (DWORD_PTR dwIoBase, BYTE byRFType, UINT uChannel)
{
    int ii;
    BYTE byInitCount = 0;
    BYTE bySleepCount = 0;

    VNSvOutPortW(dwIoBase + MAC_REG_MISCFFNDEX, 0);
    switch (byRFType) {
        case 131:
        case 129:

            if (uChannel > CB_MAX_CHANNEL_24G)
                return FALSE;

            byInitCount = CB_AL2230_INIT_SEQ + 2;
            bySleepCount = 0;
            if (byInitCount > (MISCFIFO_SYNDATASIZE - bySleepCount)) {
                return FALSE;
            }

            for (ii = 0; ii < CB_AL2230_INIT_SEQ; ii++ ) {
                MACvSetMISCFifo(dwIoBase, (WORD)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230InitTable[ii]);
            }
            MACvSetMISCFifo(dwIoBase, (WORD)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel-1]);
            ii ++;
            MACvSetMISCFifo(dwIoBase, (WORD)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable1[uChannel-1]);
            break;



        case 130:
            byInitCount = CB_AL7230_INIT_SEQ + 3;
            bySleepCount = 0;
            if (byInitCount > (MISCFIFO_SYNDATASIZE - bySleepCount)) {
                return FALSE;
            }

            if (uChannel <= CB_MAX_CHANNEL_24G)
            {
                for (ii = 0; ii < CB_AL7230_INIT_SEQ; ii++ ) {
                    MACvSetMISCFifo(dwIoBase, (WORD)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230InitTable[ii]);
                }
            }
            else
            {
                for (ii = 0; ii < CB_AL7230_INIT_SEQ; ii++ ) {
                    MACvSetMISCFifo(dwIoBase, (WORD)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230InitTableAMode[ii]);
                }
            }

            MACvSetMISCFifo(dwIoBase, (WORD)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable0[uChannel-1]);
            ii ++;
            MACvSetMISCFifo(dwIoBase, (WORD)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable1[uChannel-1]);
            ii ++;
            MACvSetMISCFifo(dwIoBase, (WORD)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable2[uChannel-1]);
            break;


        case 128 :
            return TRUE;
            break;

        default:
            return FALSE;
            break;
    }

    MACvSetMISCFifo(dwIoBase, MISCFIFO_SYNINFO_IDX, (DWORD)MAKEWORD(bySleepCount, byInitCount));

    return TRUE;
}
