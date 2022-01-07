
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int dummy; } ;


 int maven_get_queryctrl (void*,struct v4l2_queryctrl*) ;

__attribute__((used)) static int maven_out_get_queryctrl(void* md, struct v4l2_queryctrl* p) {
        return maven_get_queryctrl(md, p);
}
