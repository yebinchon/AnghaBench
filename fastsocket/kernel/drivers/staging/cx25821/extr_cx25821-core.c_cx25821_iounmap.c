
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25821_dev {int * lmmio; } ;


 int CX25821_INFO (char*) ;
 int iounmap (int *) ;

__attribute__((used)) static void cx25821_iounmap(struct cx25821_dev *dev)
{
 if (dev == ((void*)0))
  return;


 if (dev->lmmio != ((void*)0)) {
  CX25821_INFO("Releasing lmmio.\n");
  iounmap(dev->lmmio);
  dev->lmmio = ((void*)0);
 }
}
