
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int ies_mutex; } ;


 int mutex_init (int *) ;

void uwb_rc_ie_init(struct uwb_rc *uwb_rc)
{
 mutex_init(&uwb_rc->ies_mutex);
}
