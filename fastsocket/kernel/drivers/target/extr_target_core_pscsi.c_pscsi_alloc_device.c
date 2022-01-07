
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_hba {int dummy; } ;
struct se_device {int dummy; } ;
struct pscsi_dev_virt {struct se_device dev; } ;


 int GFP_KERNEL ;
 struct pscsi_dev_virt* kzalloc (int,int ) ;
 int pr_debug (char*,struct pscsi_dev_virt*,char const*) ;
 int pr_err (char*) ;

__attribute__((used)) static struct se_device *pscsi_alloc_device(struct se_hba *hba,
  const char *name)
{
 struct pscsi_dev_virt *pdv;

 pdv = kzalloc(sizeof(struct pscsi_dev_virt), GFP_KERNEL);
 if (!pdv) {
  pr_err("Unable to allocate memory for struct pscsi_dev_virt\n");
  return ((void*)0);
 }

 pr_debug("PSCSI: Allocated pdv: %p for %s\n", pdv, name);
 return &pdv->dev;
}
