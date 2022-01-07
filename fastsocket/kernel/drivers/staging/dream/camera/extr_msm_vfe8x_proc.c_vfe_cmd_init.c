
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vfe_frame_extra {int dummy; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int name; } ;
struct msm_vfe_callback {scalar_t__ vfe_resp; } ;
struct msm_vfe8x_ctrl {int dummy; } ;
struct TYPE_4__ {int extlen; int vfebase; scalar_t__ vfeirq; void* syncdata; int tasklet_q; int tasklet_lock; int io_lock; int state_lock; int ack_lock; int extdata; struct msm_vfe_callback* resp; } ;


 int CDBG (char*) ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int IRQF_TRIGGER_RISING ;
 TYPE_1__* ctrl ;
 int disable_irq (scalar_t__) ;
 int free_irq (scalar_t__,int ) ;
 int ioremap (scalar_t__,scalar_t__) ;
 int iounmap (int ) ;
 int kfree (TYPE_1__*) ;
 int kmalloc (int,int ) ;
 TYPE_1__* kzalloc (int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 int request_irq (scalar_t__,int ,int ,char*,int ) ;
 struct resource* request_mem_region (scalar_t__,int ,int ) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;
 int vfe_parse_irq ;

int vfe_cmd_init(struct msm_vfe_callback *presp,
 struct platform_device *pdev, void *sdata)
{
 struct resource *vfemem, *vfeirq, *vfeio;
 int rc;

 vfemem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!vfemem) {
  CDBG("no mem resource?\n");
  return -ENODEV;
 }

 vfeirq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!vfeirq) {
  CDBG("no irq resource?\n");
  return -ENODEV;
 }

 vfeio = request_mem_region(vfemem->start,
  resource_size(vfemem), pdev->name);
 if (!vfeio) {
  CDBG("VFE region already claimed\n");
  return -EBUSY;
 }

 ctrl =
 kzalloc(sizeof(struct msm_vfe8x_ctrl), GFP_KERNEL);
 if (!ctrl) {
  rc = -ENOMEM;
  goto cmd_init_failed1;
 }

 ctrl->vfeirq = vfeirq->start;

 ctrl->vfebase =
  ioremap(vfemem->start, (vfemem->end - vfemem->start) + 1);
 if (!ctrl->vfebase) {
  rc = -ENOMEM;
  goto cmd_init_failed2;
 }

 rc = request_irq(ctrl->vfeirq, vfe_parse_irq,
  IRQF_TRIGGER_RISING, "vfe", 0);
 if (rc < 0)
  goto cmd_init_failed2;

 if (presp && presp->vfe_resp)
  ctrl->resp = presp;
 else {
  rc = -EINVAL;
  goto cmd_init_failed3;
 }

 ctrl->extdata =
  kmalloc(sizeof(struct vfe_frame_extra), GFP_KERNEL);
 if (!ctrl->extdata) {
  rc = -ENOMEM;
  goto cmd_init_failed3;
 }

 spin_lock_init(&ctrl->ack_lock);
 spin_lock_init(&ctrl->state_lock);
 spin_lock_init(&ctrl->io_lock);

 ctrl->extlen = sizeof(struct vfe_frame_extra);

 spin_lock_init(&ctrl->tasklet_lock);
 INIT_LIST_HEAD(&ctrl->tasklet_q);

 ctrl->syncdata = sdata;
 return 0;

cmd_init_failed3:
 disable_irq(ctrl->vfeirq);
 free_irq(ctrl->vfeirq, 0);
 iounmap(ctrl->vfebase);
cmd_init_failed2:
 kfree(ctrl);
cmd_init_failed1:
 release_mem_region(vfemem->start, (vfemem->end - vfemem->start) + 1);
 return rc;
}
