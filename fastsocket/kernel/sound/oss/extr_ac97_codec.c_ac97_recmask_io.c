
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_codec {unsigned int (* codec_read ) (struct ac97_codec*,int ) ;int (* codec_write ) (struct ac97_codec*,int ,unsigned int) ;} ;


 int AC97_RECORD_SELECT ;
 unsigned int* ac97_oss_rm ;
 int* ac97_rm2oss ;
 unsigned int ffs (int) ;
 int printk (char*,unsigned int) ;
 unsigned int stub1 (struct ac97_codec*,int ) ;
 int stub2 (struct ac97_codec*,int ) ;
 int stub3 (struct ac97_codec*,int ,unsigned int) ;

__attribute__((used)) static int ac97_recmask_io(struct ac97_codec *codec, int rw, int mask)
{
 unsigned int val;

 if (rw) {

  val = codec->codec_read(codec, AC97_RECORD_SELECT);



  return (1 << ac97_rm2oss[val & 0x07]);
 }




 val = (1 << ac97_rm2oss[codec->codec_read(codec, AC97_RECORD_SELECT) & 0x07]);
 if (mask != val)
     mask &= ~val;

 val = ffs(mask);
 val = ac97_oss_rm[val-1];
 val |= val << 8;





 codec->codec_write(codec, AC97_RECORD_SELECT, val);

 return 0;
}
