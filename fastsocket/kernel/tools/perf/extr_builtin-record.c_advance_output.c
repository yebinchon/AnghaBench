
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_record {size_t bytes_written; } ;



__attribute__((used)) static void advance_output(struct perf_record *rec, size_t size)
{
 rec->bytes_written += size;
}
