
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {char* id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct snd_card* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t
card_id_show_attr(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct snd_card *card = dev_get_drvdata(dev);
 return snprintf(buf, PAGE_SIZE, "%s\n", card ? card->id : "(null)");
}
