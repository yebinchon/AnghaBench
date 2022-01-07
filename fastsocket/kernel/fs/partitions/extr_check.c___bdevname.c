
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int BDEVNAME_SIZE ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int scnprintf (char*,int ,char*,int ,int ) ;

const char *__bdevname(dev_t dev, char *buffer)
{
 scnprintf(buffer, BDEVNAME_SIZE, "unknown-block(%u,%u)",
    MAJOR(dev), MINOR(dev));
 return buffer;
}
