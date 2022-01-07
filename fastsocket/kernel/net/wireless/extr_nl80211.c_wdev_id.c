
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct wireless_dev {int wiphy; scalar_t__ identifier; } ;
struct TYPE_2__ {scalar_t__ wiphy_idx; } ;


 TYPE_1__* wiphy_to_dev (int ) ;

__attribute__((used)) static inline u64 wdev_id(struct wireless_dev *wdev)
{
 return (u64)wdev->identifier |
        ((u64)wiphy_to_dev(wdev->wiphy)->wiphy_idx << 32);
}
