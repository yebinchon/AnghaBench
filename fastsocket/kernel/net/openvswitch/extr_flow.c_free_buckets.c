
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flex_array {int dummy; } ;


 int flex_array_free (struct flex_array*) ;

__attribute__((used)) static void free_buckets(struct flex_array *buckets)
{
 flex_array_free(buckets);
}
