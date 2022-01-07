
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int annotate__config ;
 int perf_config (int ,int *) ;

void annotate_browser__init(void)
{
 perf_config(annotate__config, ((void*)0));
}
