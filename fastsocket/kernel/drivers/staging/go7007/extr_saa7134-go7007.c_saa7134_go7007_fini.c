
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_go7007 {scalar_t__ bottom; scalar_t__ top; } ;
struct saa7134_dev {int * empress_dev; } ;
struct go7007 {int status; struct saa7134_go7007* hpi_context; } ;


 int STATUS_SHUTDOWN ;
 int free_page (unsigned long) ;
 int go7007_remove (struct go7007*) ;
 int kfree (struct saa7134_go7007*) ;
 struct go7007* video_get_drvdata (int *) ;

__attribute__((used)) static int saa7134_go7007_fini(struct saa7134_dev *dev)
{
 struct go7007 *go;
 struct saa7134_go7007 *saa;

 if (((void*)0) == dev->empress_dev)
  return 0;

 go = video_get_drvdata(dev->empress_dev);
 saa = go->hpi_context;
 go->status = STATUS_SHUTDOWN;
 free_page((unsigned long)saa->top);
 free_page((unsigned long)saa->bottom);
 kfree(saa);
 go7007_remove(go);
 dev->empress_dev = ((void*)0);

 return 0;
}
