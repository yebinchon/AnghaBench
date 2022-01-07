
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aic26 {int codec; } ;
typedef size_t ssize_t ;


 int AIC26_REG_AUDIO_CTRL2 ;
 int aic26_reg_read_cache (int *,int ) ;
 int aic26_reg_write (int *,int ,int) ;
 struct aic26* dev_get_drvdata (struct device*) ;

__attribute__((used)) static ssize_t aic26_keyclick_set(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct aic26 *aic26 = dev_get_drvdata(dev);
 int val;

 val = aic26_reg_read_cache(&aic26->codec, AIC26_REG_AUDIO_CTRL2);
 val |= 0x8000;
 aic26_reg_write(&aic26->codec, AIC26_REG_AUDIO_CTRL2, val);

 return count;
}
