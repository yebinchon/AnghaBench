
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int analogue_routes ;
 int lineout1_diff_routes ;
 int lineout1_se_routes ;
 int lineout2_diff_routes ;
 int lineout2_se_routes ;
 int snd_soc_dapm_add_routes (struct snd_soc_codec*,int ,int ) ;

int wm_hubs_add_analogue_routes(struct snd_soc_codec *codec,
    int lineout1_diff, int lineout2_diff)
{
 snd_soc_dapm_add_routes(codec, analogue_routes,
    ARRAY_SIZE(analogue_routes));

 if (lineout1_diff)
  snd_soc_dapm_add_routes(codec,
     lineout1_diff_routes,
     ARRAY_SIZE(lineout1_diff_routes));
 else
  snd_soc_dapm_add_routes(codec,
     lineout1_se_routes,
     ARRAY_SIZE(lineout1_se_routes));

 if (lineout2_diff)
  snd_soc_dapm_add_routes(codec,
     lineout2_diff_routes,
     ARRAY_SIZE(lineout2_diff_routes));
 else
  snd_soc_dapm_add_routes(codec,
     lineout2_se_routes,
     ARRAY_SIZE(lineout2_se_routes));

 return 0;
}
