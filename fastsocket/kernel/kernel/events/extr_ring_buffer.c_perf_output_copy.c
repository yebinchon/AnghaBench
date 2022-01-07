
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_output_handle {int dummy; } ;


 int __output_copy (struct perf_output_handle*,void const*,unsigned int) ;

void perf_output_copy(struct perf_output_handle *handle,
        const void *buf, unsigned int len)
{
 __output_copy(handle, buf, len);
}
