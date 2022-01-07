
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * data; } ;
typedef TYPE_1__ imgchunk_t ;
typedef int fchunk ;


 int kfree (int *) ;
 int memset (TYPE_1__*,int ,int) ;

void free_chunks(imgchunk_t *fchunk, unsigned int *nfchunks)
{
 int i;
 for (i = 0; i < *nfchunks; i++) {
  if (fchunk[i].data != ((void*)0)) {
   kfree(fchunk[i].data);
  }
 }
 *nfchunks = 0;
 memset(fchunk, 0, sizeof(fchunk));

}
