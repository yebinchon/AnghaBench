
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp {int dummy; } ;
struct uwb_dev {int dummy; } ;
struct device {int dummy; } ;


 struct uwb_dev* to_uwb_dev (struct device*) ;
 int wlp_add_neighbor (struct wlp*,struct uwb_dev*) ;

__attribute__((used)) static int wlp_add_neighbor_helper(struct device *dev, void *priv)
{
 struct wlp *wlp = priv;
 struct uwb_dev *uwb_dev = to_uwb_dev(dev);

 return wlp_add_neighbor(wlp, uwb_dev);
}
