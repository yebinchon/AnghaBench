
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int uwb_dev; } ;


 int uwb_dev_get (int *) ;

__attribute__((used)) static inline struct uwb_rc *__uwb_rc_get(struct uwb_rc *rc)
{
 uwb_dev_get(&rc->uwb_dev);
 return rc;
}
