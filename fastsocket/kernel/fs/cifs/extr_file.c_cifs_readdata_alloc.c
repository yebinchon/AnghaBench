
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slow_work_ops {int dummy; } ;
struct page {int dummy; } ;
struct cifs_readdata {int work; int done; int list; int refcount; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int init_completion (int *) ;
 int kref_init (int *) ;
 struct cifs_readdata* kzalloc (int,int ) ;
 int slow_work_init (int *,struct slow_work_ops const*) ;

__attribute__((used)) static struct cifs_readdata *
cifs_readdata_alloc(unsigned int nr_pages, const struct slow_work_ops *ops)
{
 struct cifs_readdata *rdata;

 rdata = kzalloc(sizeof(*rdata) + (sizeof(struct page *) * nr_pages),
   GFP_KERNEL);
 if (rdata != ((void*)0)) {
  kref_init(&rdata->refcount);
  INIT_LIST_HEAD(&rdata->list);
  init_completion(&rdata->done);
  slow_work_init(&rdata->work, ops);
 }

 return rdata;
}
