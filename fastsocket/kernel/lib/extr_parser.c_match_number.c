
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int to; int from; } ;
typedef TYPE_1__ substring_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int memcpy (char*,int,int) ;
 int simple_strtol (char*,char**,int) ;

__attribute__((used)) static int match_number(substring_t *s, int *result, int base)
{
 char *endp;
 char *buf;
 int ret;

 buf = kmalloc(s->to - s->from + 1, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;
 memcpy(buf, s->from, s->to - s->from);
 buf[s->to - s->from] = '\0';
 *result = simple_strtol(buf, &endp, base);
 ret = 0;
 if (endp == buf)
  ret = -EINVAL;
 kfree(buf);
 return ret;
}
