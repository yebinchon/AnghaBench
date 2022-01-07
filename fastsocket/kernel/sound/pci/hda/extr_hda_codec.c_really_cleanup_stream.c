
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_cvt_setup {int nid; scalar_t__ format_id; scalar_t__ channel_id; scalar_t__ stream_tag; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_CHANNEL_STREAMID ;
 int AC_VERB_SET_STREAM_FORMAT ;
 int memset (struct hda_cvt_setup*,int ,int) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;

__attribute__((used)) static void really_cleanup_stream(struct hda_codec *codec,
      struct hda_cvt_setup *q)
{
 hda_nid_t nid = q->nid;
 if (q->stream_tag || q->channel_id)
  snd_hda_codec_write(codec, nid, 0, AC_VERB_SET_CHANNEL_STREAMID, 0);
 if (q->format_id)
  snd_hda_codec_write(codec, nid, 0, AC_VERB_SET_STREAM_FORMAT, 0
);
 memset(q, 0, sizeof(*q));
 q->nid = nid;
}
