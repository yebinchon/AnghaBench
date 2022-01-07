
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ff_gameid; int ff_partysize; int ff_hassummons; } ;
typedef TYPE_1__ final_fantasy_info_t ;


 int ff_getgameid (TYPE_1__*) ;
 int ff_getpartysize (TYPE_1__*) ;
 int ff_getsummons (TYPE_1__*) ;
 int sleep (int) ;

int
main(void)
{
 final_fantasy_info_t ffiii, ffx, ffi;

 ffi.ff_gameid = 1;
 ffi.ff_partysize = 4;
 ffi.ff_hassummons = 0;

 ffiii.ff_gameid = 6;
 ffiii.ff_partysize = 4;
 ffiii.ff_hassummons = 1;

 ffx.ff_gameid = 10;
 ffx.ff_partysize = 3;
 ffx.ff_hassummons = 1;

 for (;;) {
  ff_getgameid(&ffi);
  ff_getpartysize(&ffx);
  ff_getsummons(&ffiii);
  sleep(1);
 }

 return (0);
}
