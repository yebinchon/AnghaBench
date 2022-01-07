
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_neighbor_e {int node; struct uwb_dev* uwb_dev; } ;
struct wlp {int neighbors; } ;
struct uwb_dev {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 struct wlp_neighbor_e* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int uwb_dev_get (struct uwb_dev*) ;
 int wlp_neighbor_init (struct wlp_neighbor_e*) ;

__attribute__((used)) static
int wlp_add_neighbor(struct wlp *wlp, struct uwb_dev *dev)
{
 int result = 0;
 int discoverable;
 struct wlp_neighbor_e *neighbor;
 discoverable = 1;
 if (discoverable) {

  neighbor = kzalloc(sizeof(*neighbor), GFP_KERNEL);
  if (neighbor == ((void*)0)) {
   dev_err(&dev->dev, "Unable to create memory for "
    "new neighbor. \n");
   result = -ENOMEM;
   goto error_no_mem;
  }
  wlp_neighbor_init(neighbor);
  uwb_dev_get(dev);
  neighbor->uwb_dev = dev;
  list_add(&neighbor->node, &wlp->neighbors);
 }
error_no_mem:
 return result;
}
