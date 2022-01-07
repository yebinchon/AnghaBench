
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct inode {int dummy; } ;
struct file {int f_mode; int f_flags; int f_lock; scalar_t__ private_data; } ;
struct TYPE_9__ {int mapped; int count; int total_bytes; int sample_rate; int num_channels; int sample_size; int fragsize; int cnt_factor; int fragshift; int ossfragshift; int ossmaxfrags; int subdivision; int dma_fragsize; int rawbuf; int nextOut; int stopped; int nextIn; int numfrag; int dmasize; } ;
struct au1550_state {int open_mode; int codec_ext_caps; int codec; TYPE_4__ dma_dac; TYPE_4__ dma_adc; int lock; } ;
struct TYPE_7__ {int fragsize; int bytes; int fragments; int blocks; void* ptr; int fragstotal; } ;
typedef TYPE_1__ count_info ;
typedef int cinfo ;
typedef TYPE_1__ audio_buf_info ;
typedef int abinfo ;
struct TYPE_8__ {unsigned int cmd; unsigned int str; } ;


 int AC97_EXTENDED_STATUS ;
 int AC97_EXTID_SDAC ;
 int AC97_EXTSTAT_PRI ;
 int AC97_EXTSTAT_PRJ ;
 int AC97_EXTSTAT_PRK ;
 int AC97_EXT_DACS ;
 int AFMT_QUERY ;
 int AFMT_S16_LE ;
 int AFMT_U8 ;
 int ARRAY_SIZE (TYPE_3__*) ;
 int DSP_CAP_DUPLEX ;
 int DSP_CAP_MMAP ;
 int DSP_CAP_REALTIME ;
 int DSP_CAP_TRIGGER ;
 int EFAULT ;
 int EINVAL ;
 int FMODE_READ ;
 int FMODE_WRITE ;

 int O_NONBLOCK ;
 int PCM_ENABLE_INPUT ;
 int PCM_ENABLE_OUTPUT ;
 int SOUND_VERSION ;
 int copy_to_user (void*,TYPE_1__*,int) ;
 int dma_count_done (TYPE_4__*) ;
 int drain_dac (struct au1550_state*,int) ;
 int get_user (int,int*) ;
 TYPE_3__* ioctl_str ;
 int mixdev_ioctl (int ,unsigned int,unsigned long) ;
 int pr_debug (char*,unsigned int,unsigned long) ;
 int prog_dmabuf_adc (struct au1550_state*) ;
 int prog_dmabuf_dac (struct au1550_state*) ;
 int put_user (int,int*) ;
 int rdcodec (int ,int ) ;
 int set_adc_rate (struct au1550_state*,int) ;
 int set_dac_rate (struct au1550_state*,int) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_adc (struct au1550_state*) ;
 int start_dac (struct au1550_state*) ;
 int stop_adc (struct au1550_state*) ;
 int stop_dac (struct au1550_state*) ;
 int synchronize_irq () ;
 void* virt_to_phys (int ) ;
 int wrcodec (int ,int ,int) ;

__attribute__((used)) static int
au1550_ioctl(struct inode *inode, struct file *file, unsigned int cmd,
       unsigned long arg)
{
 struct au1550_state *s = (struct au1550_state *)file->private_data;
 unsigned long flags;
 audio_buf_info abinfo;
 count_info cinfo;
 int count;
 int val, mapped, ret, diff;

 mapped = ((file->f_mode & FMODE_WRITE) && s->dma_dac.mapped) ||
  ((file->f_mode & FMODE_READ) && s->dma_adc.mapped);
 switch (cmd) {
 case 155:
  return put_user(SOUND_VERSION, (int *) arg);

 case 133:
  if (file->f_mode & FMODE_WRITE)
   return drain_dac(s, file->f_flags & O_NONBLOCK);
  return 0;

 case 141:
  return 0;

 case 152:
  return put_user(DSP_CAP_DUPLEX | DSP_CAP_REALTIME |
    DSP_CAP_TRIGGER | DSP_CAP_MMAP, (int *)arg);

 case 142:
  if (file->f_mode & FMODE_WRITE) {
   stop_dac(s);
   synchronize_irq();
   s->dma_dac.count = s->dma_dac.total_bytes = 0;
   s->dma_dac.nextIn = s->dma_dac.nextOut =
    s->dma_dac.rawbuf;
  }
  if (file->f_mode & FMODE_READ) {
   stop_adc(s);
   synchronize_irq();
   s->dma_adc.count = s->dma_adc.total_bytes = 0;
   s->dma_adc.nextIn = s->dma_adc.nextOut =
    s->dma_adc.rawbuf;
  }
  return 0;

 case 136:
  if (get_user(val, (int *) arg))
   return -EFAULT;
  if (val >= 0) {
   if (file->f_mode & FMODE_READ) {
    stop_adc(s);
    set_adc_rate(s, val);
   }
   if (file->f_mode & FMODE_WRITE) {
    stop_dac(s);
    set_dac_rate(s, val);
   }
   if (s->open_mode & FMODE_READ)
    if ((ret = prog_dmabuf_adc(s)))
     return ret;
   if (s->open_mode & FMODE_WRITE)
    if ((ret = prog_dmabuf_dac(s)))
     return ret;
  }
  return put_user((file->f_mode & FMODE_READ) ?
    s->dma_adc.sample_rate :
    s->dma_dac.sample_rate,
    (int *)arg);

 case 135:
  if (get_user(val, (int *) arg))
   return -EFAULT;
  if (file->f_mode & FMODE_READ) {
   stop_adc(s);
   s->dma_adc.num_channels = val ? 2 : 1;
   if ((ret = prog_dmabuf_adc(s)))
    return ret;
  }
  if (file->f_mode & FMODE_WRITE) {
   stop_dac(s);
   s->dma_dac.num_channels = val ? 2 : 1;
   if (s->codec_ext_caps & AC97_EXT_DACS) {


    u16 ext_stat = rdcodec(s->codec,
             AC97_EXTENDED_STATUS);
    wrcodec(s->codec, AC97_EXTENDED_STATUS,
     ext_stat | (AC97_EXTSTAT_PRI |
          AC97_EXTSTAT_PRJ |
          AC97_EXTSTAT_PRK));
   }
   if ((ret = prog_dmabuf_dac(s)))
    return ret;
  }
  return 0;

 case 154:
  if (get_user(val, (int *) arg))
   return -EFAULT;
  if (val != 0) {
   if (file->f_mode & FMODE_READ) {
    if (val < 0 || val > 2)
     return -EINVAL;
    stop_adc(s);
    s->dma_adc.num_channels = val;
    if ((ret = prog_dmabuf_adc(s)))
     return ret;
   }
   if (file->f_mode & FMODE_WRITE) {
    switch (val) {
    case 1:
    case 2:
     break;
    case 3:
    case 5:
     return -EINVAL;
    case 4:
     if (!(s->codec_ext_caps &
           AC97_EXTID_SDAC))
      return -EINVAL;
     break;
    case 6:
     if ((s->codec_ext_caps &
          AC97_EXT_DACS) != AC97_EXT_DACS)
      return -EINVAL;
     break;
    default:
     return -EINVAL;
    }

    stop_dac(s);
    if (val <= 2 &&
        (s->codec_ext_caps & AC97_EXT_DACS)) {



     u16 ext_stat =
      rdcodec(s->codec,
       AC97_EXTENDED_STATUS);
     wrcodec(s->codec,
      AC97_EXTENDED_STATUS,
      ext_stat | (AC97_EXTSTAT_PRI |
           AC97_EXTSTAT_PRJ |
           AC97_EXTSTAT_PRK));
    } else if (val >= 4) {



     u16 ext_stat =
      rdcodec(s->codec,
       AC97_EXTENDED_STATUS);
     ext_stat &= ~AC97_EXTSTAT_PRJ;
     if (val == 6)
      ext_stat &=
       ~(AC97_EXTSTAT_PRI |
         AC97_EXTSTAT_PRK);
     wrcodec(s->codec,
      AC97_EXTENDED_STATUS,
      ext_stat);
    }

    s->dma_dac.num_channels = val;
    if ((ret = prog_dmabuf_dac(s)))
     return ret;
   }
  }
  return put_user(val, (int *) arg);

 case 151:
  return put_user(AFMT_S16_LE | AFMT_U8, (int *) arg);

 case 140:
  if (get_user(val, (int *) arg))
   return -EFAULT;
  if (val != AFMT_QUERY) {
   if (file->f_mode & FMODE_READ) {
    stop_adc(s);
    if (val == AFMT_S16_LE)
     s->dma_adc.sample_size = 16;
    else {
     val = AFMT_U8;
     s->dma_adc.sample_size = 8;
    }
    if ((ret = prog_dmabuf_adc(s)))
     return ret;
   }
   if (file->f_mode & FMODE_WRITE) {
    stop_dac(s);
    if (val == AFMT_S16_LE)
     s->dma_dac.sample_size = 16;
    else {
     val = AFMT_U8;
     s->dma_dac.sample_size = 8;
    }
    if ((ret = prog_dmabuf_dac(s)))
     return ret;
   }
  } else {
   if (file->f_mode & FMODE_READ)
    val = (s->dma_adc.sample_size == 16) ?
     AFMT_S16_LE : AFMT_U8;
   else
    val = (s->dma_dac.sample_size == 16) ?
     AFMT_S16_LE : AFMT_U8;
  }
  return put_user(val, (int *) arg);

 case 143:
  return 0;

 case 145:
  val = 0;
  spin_lock_irqsave(&s->lock, flags);
  if (file->f_mode & FMODE_READ && !s->dma_adc.stopped)
   val |= PCM_ENABLE_INPUT;
  if (file->f_mode & FMODE_WRITE && !s->dma_dac.stopped)
   val |= PCM_ENABLE_OUTPUT;
  spin_unlock_irqrestore(&s->lock, flags);
  return put_user(val, (int *) arg);

 case 137:
  if (get_user(val, (int *) arg))
   return -EFAULT;
  if (file->f_mode & FMODE_READ) {
   if (val & PCM_ENABLE_INPUT) {
    spin_lock_irqsave(&s->lock, flags);
    start_adc(s);
    spin_unlock_irqrestore(&s->lock, flags);
   } else
    stop_adc(s);
  }
  if (file->f_mode & FMODE_WRITE) {
   if (val & PCM_ENABLE_OUTPUT) {
    spin_lock_irqsave(&s->lock, flags);
    start_dac(s);
    spin_unlock_irqrestore(&s->lock, flags);
   } else
    stop_dac(s);
  }
  return 0;

 case 146:
  if (!(file->f_mode & FMODE_WRITE))
   return -EINVAL;
  abinfo.fragsize = s->dma_dac.fragsize;
  spin_lock_irqsave(&s->lock, flags);
  count = s->dma_dac.count;
  count -= dma_count_done(&s->dma_dac);
  spin_unlock_irqrestore(&s->lock, flags);
  if (count < 0)
   count = 0;
  abinfo.bytes = (s->dma_dac.dmasize - count) /
   s->dma_dac.cnt_factor;
  abinfo.fragstotal = s->dma_dac.numfrag;
  abinfo.fragments = abinfo.bytes >> s->dma_dac.fragshift;
  pr_debug("ioctl SNDCTL_DSP_GETOSPACE: bytes=%d, fragments=%d\n", abinfo.bytes, abinfo.fragments);
  return copy_to_user((void *) arg, &abinfo,
        sizeof(abinfo)) ? -EFAULT : 0;

 case 149:
  if (!(file->f_mode & FMODE_READ))
   return -EINVAL;
  abinfo.fragsize = s->dma_adc.fragsize;
  spin_lock_irqsave(&s->lock, flags);
  count = s->dma_adc.count;
  count += dma_count_done(&s->dma_adc);
  spin_unlock_irqrestore(&s->lock, flags);
  if (count < 0)
   count = 0;
  abinfo.bytes = count / s->dma_adc.cnt_factor;
  abinfo.fragstotal = s->dma_adc.numfrag;
  abinfo.fragments = abinfo.bytes >> s->dma_adc.fragshift;
  return copy_to_user((void *) arg, &abinfo,
        sizeof(abinfo)) ? -EFAULT : 0;

 case 144:
  spin_lock(&file->f_lock);
  file->f_flags |= O_NONBLOCK;
  spin_unlock(&file->f_lock);
  return 0;

 case 148:
  if (!(file->f_mode & FMODE_WRITE))
   return -EINVAL;
  spin_lock_irqsave(&s->lock, flags);
  count = s->dma_dac.count;
  count -= dma_count_done(&s->dma_dac);
  spin_unlock_irqrestore(&s->lock, flags);
  if (count < 0)
   count = 0;
  count /= s->dma_dac.cnt_factor;
  return put_user(count, (int *) arg);

 case 150:
  if (!(file->f_mode & FMODE_READ))
   return -EINVAL;
  spin_lock_irqsave(&s->lock, flags);
  cinfo.bytes = s->dma_adc.total_bytes;
  count = s->dma_adc.count;
  if (!s->dma_adc.stopped) {
   diff = dma_count_done(&s->dma_adc);
   count += diff;
   cinfo.bytes += diff;
   cinfo.ptr = virt_to_phys(s->dma_adc.nextIn) + diff -
    virt_to_phys(s->dma_adc.rawbuf);
  } else
   cinfo.ptr = virt_to_phys(s->dma_adc.nextIn) -
    virt_to_phys(s->dma_adc.rawbuf);
  if (s->dma_adc.mapped)
   s->dma_adc.count &= (s->dma_adc.dma_fragsize-1);
  spin_unlock_irqrestore(&s->lock, flags);
  if (count < 0)
   count = 0;
  cinfo.blocks = count >> s->dma_adc.fragshift;
  return copy_to_user((void *) arg, &cinfo, sizeof(cinfo));

 case 147:
  if (!(file->f_mode & FMODE_READ))
   return -EINVAL;
  spin_lock_irqsave(&s->lock, flags);
  cinfo.bytes = s->dma_dac.total_bytes;
  count = s->dma_dac.count;
  if (!s->dma_dac.stopped) {
   diff = dma_count_done(&s->dma_dac);
   count -= diff;
   cinfo.bytes += diff;
   cinfo.ptr = virt_to_phys(s->dma_dac.nextOut) + diff -
    virt_to_phys(s->dma_dac.rawbuf);
  } else
   cinfo.ptr = virt_to_phys(s->dma_dac.nextOut) -
    virt_to_phys(s->dma_dac.rawbuf);
  if (s->dma_dac.mapped)
   s->dma_dac.count &= (s->dma_dac.dma_fragsize-1);
  spin_unlock_irqrestore(&s->lock, flags);
  if (count < 0)
   count = 0;
  cinfo.blocks = count >> s->dma_dac.fragshift;
  return copy_to_user((void *) arg, &cinfo, sizeof(cinfo));

 case 153:
  if (file->f_mode & FMODE_WRITE)
   return put_user(s->dma_dac.fragsize, (int *) arg);
  else
   return put_user(s->dma_adc.fragsize, (int *) arg);

 case 139:
  if (get_user(val, (int *) arg))
   return -EFAULT;
  if (file->f_mode & FMODE_READ) {
   stop_adc(s);
   s->dma_adc.ossfragshift = val & 0xffff;
   s->dma_adc.ossmaxfrags = (val >> 16) & 0xffff;
   if (s->dma_adc.ossfragshift < 4)
    s->dma_adc.ossfragshift = 4;
   if (s->dma_adc.ossfragshift > 15)
    s->dma_adc.ossfragshift = 15;
   if (s->dma_adc.ossmaxfrags < 4)
    s->dma_adc.ossmaxfrags = 4;
   if ((ret = prog_dmabuf_adc(s)))
    return ret;
  }
  if (file->f_mode & FMODE_WRITE) {
   stop_dac(s);
   s->dma_dac.ossfragshift = val & 0xffff;
   s->dma_dac.ossmaxfrags = (val >> 16) & 0xffff;
   if (s->dma_dac.ossfragshift < 4)
    s->dma_dac.ossfragshift = 4;
   if (s->dma_dac.ossfragshift > 15)
    s->dma_dac.ossfragshift = 15;
   if (s->dma_dac.ossmaxfrags < 4)
    s->dma_dac.ossmaxfrags = 4;
   if ((ret = prog_dmabuf_dac(s)))
    return ret;
  }
  return 0;

 case 134:
  if ((file->f_mode & FMODE_READ && s->dma_adc.subdivision) ||
      (file->f_mode & FMODE_WRITE && s->dma_dac.subdivision))
   return -EINVAL;
  if (get_user(val, (int *) arg))
   return -EFAULT;
  if (val != 1 && val != 2 && val != 4)
   return -EINVAL;
  if (file->f_mode & FMODE_READ) {
   stop_adc(s);
   s->dma_adc.subdivision = val;
   if ((ret = prog_dmabuf_adc(s)))
    return ret;
  }
  if (file->f_mode & FMODE_WRITE) {
   stop_dac(s);
   s->dma_dac.subdivision = val;
   if ((ret = prog_dmabuf_dac(s)))
    return ret;
  }
  return 0;

 case 129:
  return put_user((file->f_mode & FMODE_READ) ?
    s->dma_adc.sample_rate :
    s->dma_dac.sample_rate,
    (int *)arg);

 case 131:
  if (file->f_mode & FMODE_READ)
   return put_user(s->dma_adc.num_channels, (int *)arg);
  else
   return put_user(s->dma_dac.num_channels, (int *)arg);

 case 132:
  if (file->f_mode & FMODE_READ)
   return put_user(s->dma_adc.sample_size, (int *)arg);
  else
   return put_user(s->dma_dac.sample_size, (int *)arg);

 case 128:
 case 138:
 case 130:
  return -EINVAL;
 }

 return mixdev_ioctl(s->codec, cmd, arg);
}
