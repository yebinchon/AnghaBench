
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mm_segment_t ;


 int set_fs (int ) ;

__attribute__((used)) static inline void snd_leave_user(mm_segment_t fs)
{
 set_fs(fs);
}
