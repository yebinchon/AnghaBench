
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pNext; struct TYPE_4__** ppPredecessors; scalar_t__ nPredecessors; } ;
typedef TYPE_1__ TSort ;


 int assert (int) ;

__attribute__((used)) static TSort *tsort(TSort *pData,int nItems)
{
    int nTotal;
    TSort *pHead=((void*)0);
    TSort *pTail=((void*)0);

    for(nTotal=0 ; nTotal < nItems ; ++nTotal) {
        int n,i,k;

        for(n=0 ; ; ++n) {
            if(n == nItems)
                assert(0);
            if(!pData[n].pNext) {
                if(pData[n].nPredecessors) {
                    for(k=0 ; ; ++k) {
                        assert(k < nItems);
                        if(pData[n].ppPredecessors[k])
                            break;
                    }
                    for(i=0 ; ; ++i) {
                        assert(i < nItems);
                        if(&pData[i] == pData[n].ppPredecessors[k]) {
                            n=i-1;
                            break;
                        }
                    }
                } else
                    break;
            }
        }
        if(pTail)
            pTail->pNext=&pData[n];
        else
            pHead=&pData[n];
        pTail=&pData[n];
        pTail->pNext=pTail;
        for(i=0 ; i < nItems ; ++i)
            for(k=0 ; k < nItems ; ++k)
                if(pData[i].ppPredecessors[k] == &pData[n]) {
                    --pData[i].nPredecessors;
                    pData[i].ppPredecessors[k]=((void*)0);
                    break;
                }
    }
    pTail->pNext=((void*)0);
    return pHead;
}
