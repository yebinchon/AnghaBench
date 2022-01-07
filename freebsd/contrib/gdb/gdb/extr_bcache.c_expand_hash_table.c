
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct bstring {struct bstring* next; int length; TYPE_1__ d; } ;
struct bcache {int num_buckets; int structure_size; struct bstring** bucket; scalar_t__ unique_count; int expand_hash_count; int expand_count; } ;
typedef int sizes ;
typedef int new_buckets ;


 unsigned int hash (int *,int ) ;
 int memset (struct bstring**,int ,size_t) ;
 int xfree (struct bstring**) ;
 scalar_t__ xmalloc (size_t) ;

__attribute__((used)) static void
expand_hash_table (struct bcache *bcache)
{





  static unsigned long sizes[] = {
    1021, 2053, 4099, 8191, 16381, 32771,
    65537, 131071, 262144, 524287, 1048573, 2097143,
    4194301, 8388617, 16777213, 33554467, 67108859, 134217757,
    268435459, 536870923, 1073741827, 2147483659UL
  };
  unsigned int new_num_buckets;
  struct bstring **new_buckets;
  unsigned int i;



  bcache->expand_count++;
  bcache->expand_hash_count += bcache->unique_count;


  new_num_buckets = bcache->num_buckets * 2;
  for (i = 0; i < (sizeof (sizes) / sizeof (sizes[0])); i++)
    if (sizes[i] > bcache->num_buckets)
      {
 new_num_buckets = sizes[i];
 break;
      }


  {
    size_t new_size = new_num_buckets * sizeof (new_buckets[0]);
    new_buckets = (struct bstring **) xmalloc (new_size);
    memset (new_buckets, 0, new_size);

    bcache->structure_size -= (bcache->num_buckets
          * sizeof (bcache->bucket[0]));
    bcache->structure_size += new_size;
  }


  for (i = 0; i < bcache->num_buckets; i++)
    {
      struct bstring *s, *next;

      for (s = bcache->bucket[i]; s; s = next)
 {
   struct bstring **new_bucket;
   next = s->next;

   new_bucket = &new_buckets[(hash (&s->d.data, s->length)
         % new_num_buckets)];
   s->next = *new_bucket;
   *new_bucket = s;
 }
    }


  if (bcache->bucket)
    xfree (bcache->bucket);
  bcache->bucket = new_buckets;
  bcache->num_buckets = new_num_buckets;
}
