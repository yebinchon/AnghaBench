
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ hashnode ;
struct TYPE_3__ {int nslots; size_t nelements; scalar_t__ searches; scalar_t__ collisions; int stack; scalar_t__* entries; } ;
typedef TYPE_1__ hash_table ;


 size_t HT_LEN (scalar_t__) ;
 int LABEL (size_t) ;
 int SCALE (size_t) ;
 double approx_sqrt (double) ;
 int fprintf (int ,char*,unsigned long,...) ;
 size_t obstack_memory_used (int *) ;
 int stderr ;

void
ht_dump_statistics (hash_table *table)
{
  size_t nelts, nids, overhead, headers;
  size_t total_bytes, longest;
  double sum_of_squares, exp_len, exp_len2, exp2_len;
  hashnode *p, *limit;
  total_bytes = longest = sum_of_squares = nids = 0;
  p = table->entries;
  limit = p + table->nslots;
  do
    if (*p)
      {
 size_t n = HT_LEN (*p);

 total_bytes += n;
 sum_of_squares += (double) n * n;
 if (n > longest)
   longest = n;
 nids++;
      }
  while (++p < limit);

  nelts = table->nelements;
  overhead = obstack_memory_used (&table->stack) - total_bytes;
  headers = table->nslots * sizeof (hashnode);

  fprintf (stderr, "\nString pool\nentries\t\t%lu\n",
    (unsigned long) nelts);
  fprintf (stderr, "identifiers\t%lu (%.2f%%)\n",
    (unsigned long) nids, nids * 100.0 / nelts);
  fprintf (stderr, "slots\t\t%lu\n",
    (unsigned long) table->nslots);
  fprintf (stderr, "bytes\t\t%lu%c (%lu%c overhead)\n",
    ((unsigned long) ((total_bytes) < 1024*10 ? (total_bytes) : ((total_bytes) < 1024*1024*10 ? (total_bytes) / 1024 : (total_bytes) / (1024*1024)))), ((total_bytes) < 1024*10 ? ' ' : ((total_bytes) < 1024*1024*10 ? 'k' : 'M')),
    ((unsigned long) ((overhead) < 1024*10 ? (overhead) : ((overhead) < 1024*1024*10 ? (overhead) / 1024 : (overhead) / (1024*1024)))), ((overhead) < 1024*10 ? ' ' : ((overhead) < 1024*1024*10 ? 'k' : 'M')));
  fprintf (stderr, "table size\t%lu%c\n",
    ((unsigned long) ((headers) < 1024*10 ? (headers) : ((headers) < 1024*1024*10 ? (headers) / 1024 : (headers) / (1024*1024)))), ((headers) < 1024*10 ? ' ' : ((headers) < 1024*1024*10 ? 'k' : 'M')));

  exp_len = (double)total_bytes / (double)nelts;
  exp2_len = exp_len * exp_len;
  exp_len2 = (double) sum_of_squares / (double) nelts;

  fprintf (stderr, "coll/search\t%.4f\n",
    (double) table->collisions / (double) table->searches);
  fprintf (stderr, "ins/search\t%.4f\n",
    (double) nelts / (double) table->searches);
  fprintf (stderr, "avg. entry\t%.2f bytes (+/- %.2f)\n",
    exp_len, approx_sqrt (exp_len2 - exp2_len));
  fprintf (stderr, "longest entry\t%lu\n",
    (unsigned long) longest);


}
