
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carlu {int* event_pipe; int * dev; int * fw; } ;


 int IS_ERR_OR_NULL (struct carlu*) ;
 int carlfw_release (int *) ;
 int carlu_free_driver (struct carlu*) ;
 int carlusb_zap_queues (struct carlu*) ;
 int close (int) ;
 int libusb_close (int *) ;
 int libusb_release_interface (int *,int ) ;

__attribute__((used)) static void carlusb_free_driver(struct carlu *ar)
{
 if (!IS_ERR_OR_NULL(ar)) {
  if (ar->event_pipe[0] > -1)
   close(ar->event_pipe[0]);

  if (ar->event_pipe[1] > -1)
   close(ar->event_pipe[1]);

  carlusb_zap_queues(ar);
  carlfw_release(ar->fw);
  ar->fw = ((void*)0);

  if (ar->dev) {
   libusb_release_interface(ar->dev, 0);
   libusb_close(ar->dev);
   ar->dev = ((void*)0);
  }
  carlu_free_driver(ar);
 }
}
