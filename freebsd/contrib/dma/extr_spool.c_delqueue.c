
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qitem {int * mailf; int * queuef; int queuefn; int mailfn; } ;


 int fclose (int *) ;
 int free (struct qitem*) ;
 int unlink (int ) ;

void
delqueue(struct qitem *it)
{
 unlink(it->mailfn);
 unlink(it->queuefn);
 if (it->queuef != ((void*)0))
  fclose(it->queuef);
 if (it->mailf != ((void*)0))
  fclose(it->mailf);
 free(it);
}
