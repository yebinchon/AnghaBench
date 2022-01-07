
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdar {int mode; } ;


 int bsdar_errc (struct bsdar*,int ,char*,char const*,int ) ;
 int * strchr (char const*,int ) ;

__attribute__((used)) static void
only_mode(struct bsdar *bsdar, const char *opt, const char *valid_modes)
{

 if (strchr(valid_modes, bsdar->mode) == ((void*)0))
  bsdar_errc(bsdar, 0, "Option %s is not permitted in mode -%c",
      opt, bsdar->mode);
}
