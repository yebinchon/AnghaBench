
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uts_namespace {int kref; } ;


 int GFP_KERNEL ;
 struct uts_namespace* kmalloc (int,int ) ;
 int kref_init (int *) ;

__attribute__((used)) static struct uts_namespace *create_uts_ns(void)
{
 struct uts_namespace *uts_ns;

 uts_ns = kmalloc(sizeof(struct uts_namespace), GFP_KERNEL);
 if (uts_ns)
  kref_init(&uts_ns->kref);
 return uts_ns;
}
