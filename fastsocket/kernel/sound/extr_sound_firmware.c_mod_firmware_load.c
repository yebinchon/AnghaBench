
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mm_segment_t ;


 int do_mod_firmware_load (char const*,char**) ;
 int get_ds () ;
 int get_fs () ;
 int set_fs (int ) ;

int mod_firmware_load(const char *fn, char **fp)
{
 int r;
 mm_segment_t fs = get_fs();

 set_fs(get_ds());
 r = do_mod_firmware_load(fn, fp);
 set_fs(fs);
 return r;
}
