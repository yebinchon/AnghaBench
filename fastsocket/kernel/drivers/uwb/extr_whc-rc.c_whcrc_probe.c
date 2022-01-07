
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whcrc {struct uwb_rc* uwb_rc; struct umc_dev* umc_dev; } ;
struct uwb_rc {int stop; int start; int reset; int cmd; int owner; } ;
struct device {int dummy; } ;
struct umc_dev {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*,...) ;
 int kfree (struct whcrc*) ;
 struct whcrc* kzalloc (int,int ) ;
 int umc_set_drvdata (struct umc_dev*,struct whcrc*) ;
 int uwb_rc_add (struct uwb_rc*,struct device*,struct whcrc*) ;
 struct uwb_rc* uwb_rc_alloc () ;
 int uwb_rc_put (struct uwb_rc*) ;
 int whcrc_cmd ;
 int whcrc_init (struct whcrc*) ;
 int whcrc_release_rc_umc (struct whcrc*) ;
 int whcrc_reset ;
 int whcrc_setup_rc_umc (struct whcrc*) ;
 int whcrc_start_rc ;
 int whcrc_stop_rc ;

__attribute__((used)) static
int whcrc_probe(struct umc_dev *umc_dev)
{
 int result;
 struct uwb_rc *uwb_rc;
 struct whcrc *whcrc;
 struct device *dev = &umc_dev->dev;

 result = -ENOMEM;
 uwb_rc = uwb_rc_alloc();
 if (uwb_rc == ((void*)0)) {
  dev_err(dev, "unable to allocate RC instance\n");
  goto error_rc_alloc;
 }
 whcrc = kzalloc(sizeof(*whcrc), GFP_KERNEL);
 if (whcrc == ((void*)0)) {
  dev_err(dev, "unable to allocate WHC-RC instance\n");
  goto error_alloc;
 }
 whcrc_init(whcrc);
 whcrc->umc_dev = umc_dev;

 result = whcrc_setup_rc_umc(whcrc);
 if (result < 0) {
  dev_err(dev, "Can't setup RC UMC interface: %d\n", result);
  goto error_setup_rc_umc;
 }
 whcrc->uwb_rc = uwb_rc;

 uwb_rc->owner = THIS_MODULE;
 uwb_rc->cmd = whcrc_cmd;
 uwb_rc->reset = whcrc_reset;
 uwb_rc->start = whcrc_start_rc;
 uwb_rc->stop = whcrc_stop_rc;

 result = uwb_rc_add(uwb_rc, dev, whcrc);
 if (result < 0)
  goto error_rc_add;
 umc_set_drvdata(umc_dev, whcrc);
 return 0;

error_rc_add:
 whcrc_release_rc_umc(whcrc);
error_setup_rc_umc:
 kfree(whcrc);
error_alloc:
 uwb_rc_put(uwb_rc);
error_rc_alloc:
 return result;
}
