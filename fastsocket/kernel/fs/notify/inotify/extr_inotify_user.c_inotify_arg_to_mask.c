
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __u32 ;


 int FS_EVENT_ON_CHILD ;
 int FS_IN_IGNORED ;
 int FS_UNMOUNT ;
 int IN_ALL_EVENTS ;
 int IN_ONESHOT ;

__attribute__((used)) static inline __u32 inotify_arg_to_mask(u32 arg)
{
 __u32 mask;





 mask = (FS_IN_IGNORED | FS_EVENT_ON_CHILD | FS_UNMOUNT);


 mask |= (arg & (IN_ALL_EVENTS | IN_ONESHOT));

 return mask;
}
