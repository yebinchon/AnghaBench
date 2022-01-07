
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JQS_wHead ;
 int JQS_wSize ;
 int JQS_wStart ;
 int JQS_wTail ;
 scalar_t__ PCTODSP_BASED (int) ;
 scalar_t__ PCTODSP_OFFSET (int) ;
 int writew (scalar_t__,void*) ;

void snd_msnd_init_queue(void *base, int start, int size)
{
 writew(PCTODSP_BASED(start), base + JQS_wStart);
 writew(PCTODSP_OFFSET(size) - 1, base + JQS_wSize);
 writew(0, base + JQS_wHead);
 writew(0, base + JQS_wTail);
}
