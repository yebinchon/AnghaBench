
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mimio {scalar_t__ open; scalar_t__ present; } ;
struct input_dev {int dev; } ;


 int dev_err (int *,char*) ;
 struct mimio* input_get_drvdata (struct input_dev*) ;
 int mimio_dealloc (struct mimio*) ;

__attribute__((used)) static void mimio_close(struct input_dev *idev)
{
 struct mimio *mimio;

 mimio = input_get_drvdata(idev);
 if (!mimio) {
  dev_err(&idev->dev, "null mimio attached to input device\n");
  return;
 }

 if (mimio->open <= 0)
  dev_err(&idev->dev, "mimio not open.\n");
 else
  mimio->open--;

 if (mimio->present == 0 && mimio->open == 0)
  mimio_dealloc(mimio);
}
