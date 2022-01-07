
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int,...) ;
 int pat_len ;
 int* patterns ;
 int sscanf (char*,char*,int*) ;
 int stderr ;
 int usage () ;

void get_pattern (int pat_count, char *pats [])
{
 int ix, err, tmp;







 for (ix = 0; ix < pat_count; ix++) {
  tmp = 0;
  err = sscanf (pats[ix], "%5i", &tmp);
  if (err != 1 || tmp > 0xff) {
   fprintf (stderr, "pattern or value error in pattern # %d [%s]\n",
     ix, pats[ix]);
   usage ();
  }
  patterns [ix] = tmp;
 }
 pat_len = pat_count;
}
