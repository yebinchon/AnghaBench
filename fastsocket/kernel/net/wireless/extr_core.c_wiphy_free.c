
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dev; } ;


 int put_device (int *) ;

void wiphy_free(struct wiphy *wiphy)
{
 put_device(&wiphy->dev);
}
