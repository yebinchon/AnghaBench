
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int apr_pool_t ;
struct TYPE_9__ {int nPredecessors; struct TYPE_9__** ppPredecessors; TYPE_1__* pData; int * pNext; } ;
struct TYPE_8__ {scalar_t__* aszSuccessors; int szName; scalar_t__* aszPredecessors; } ;
typedef TYPE_1__ TSortData ;
typedef TYPE_2__ TSort ;


 TYPE_2__* apr_palloc (int *,int) ;
 TYPE_2__** apr_pcalloc (int *,int) ;
 int crude_order ;
 int qsort (TYPE_1__*,int,int,int ) ;
 int strcmp (int ,scalar_t__) ;

__attribute__((used)) static TSort *prepare(apr_pool_t *p,TSortData *pItems,int nItems)
{
    TSort *pData=apr_palloc(p,nItems*sizeof *pData);
    int n;

    qsort(pItems,nItems,sizeof *pItems,crude_order);
    for(n=0 ; n < nItems ; ++n) {
        pData[n].nPredecessors=0;
        pData[n].ppPredecessors=apr_pcalloc(p,nItems*sizeof *pData[n].ppPredecessors);
        pData[n].pNext=((void*)0);
        pData[n].pData=&pItems[n];
    }

    for(n=0 ; n < nItems ; ++n) {
        int i,k;

        for(i=0 ; pItems[n].aszPredecessors && pItems[n].aszPredecessors[i] ; ++i)
            for(k=0 ; k < nItems ; ++k)
                if(!strcmp(pItems[k].szName,pItems[n].aszPredecessors[i])) {
                    int l;

                    for(l=0 ; l < pData[n].nPredecessors ; ++l)
                        if(pData[n].ppPredecessors[l] == &pData[k])
                            goto got_it;
                    pData[n].ppPredecessors[pData[n].nPredecessors]=&pData[k];
                    ++pData[n].nPredecessors;
                got_it:
                    break;
                }
        for(i=0 ; pItems[n].aszSuccessors && pItems[n].aszSuccessors[i] ; ++i)
            for(k=0 ; k < nItems ; ++k)
                if(!strcmp(pItems[k].szName,pItems[n].aszSuccessors[i])) {
                    int l;

                    for(l=0 ; l < pData[k].nPredecessors ; ++l)
                        if(pData[k].ppPredecessors[l] == &pData[n])
                            goto got_it2;
                    pData[k].ppPredecessors[pData[k].nPredecessors]=&pData[n];
                    ++pData[k].nPredecessors;
                got_it2:
                    break;
                }
    }

    return pData;
}
