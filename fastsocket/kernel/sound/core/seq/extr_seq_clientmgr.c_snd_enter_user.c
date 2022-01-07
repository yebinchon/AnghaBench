
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mm_segment_t ;


 int get_ds () ;
 int get_fs () ;
 int set_fs (int ) ;

__attribute__((used)) static inline mm_segment_t snd_enter_user(void)
{
 mm_segment_t fs = get_fs();
 set_fs(get_ds());
 return fs;
}
