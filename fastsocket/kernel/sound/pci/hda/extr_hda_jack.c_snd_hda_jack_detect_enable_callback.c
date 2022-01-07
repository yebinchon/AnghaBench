
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_tbl {int jack_detect; unsigned char action; int tag; scalar_t__ callback; } ;
struct hda_codec {scalar_t__ jackpoll_interval; } ;
typedef int hda_nid_t ;
typedef scalar_t__ hda_jack_callback ;


 int AC_USRSP_EN ;
 int AC_VERB_SET_UNSOLICITED_ENABLE ;
 int ENOMEM ;
 int snd_hda_codec_write_cache (struct hda_codec*,int ,int ,int ,int) ;
 struct hda_jack_tbl* snd_hda_jack_tbl_new (struct hda_codec*,int ) ;

int snd_hda_jack_detect_enable_callback(struct hda_codec *codec, hda_nid_t nid,
     unsigned char action,
     hda_jack_callback cb)
{
 struct hda_jack_tbl *jack = snd_hda_jack_tbl_new(codec, nid);
 if (!jack)
  return -ENOMEM;
 if (jack->jack_detect)
  return 0;
 jack->jack_detect = 1;
 if (action)
  jack->action = action;
 if (cb)
  jack->callback = cb;
 if (codec->jackpoll_interval > 0)
  return 0;
 return snd_hda_codec_write_cache(codec, nid, 0,
      AC_VERB_SET_UNSOLICITED_ENABLE,
      AC_USRSP_EN | jack->tag);
}
