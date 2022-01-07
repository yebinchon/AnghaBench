
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int partition ;


 int free (int ) ;

void
partition_delete (partition part)
{
  free (part);
}
