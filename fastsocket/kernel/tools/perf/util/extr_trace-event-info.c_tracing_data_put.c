
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_data {int temp_file; scalar_t__ temp; } ;


 int free (struct tracing_data*) ;
 int record_file (int ,int ) ;
 int unlink (int ) ;

void tracing_data_put(struct tracing_data *tdata)
{
 if (tdata->temp) {
  record_file(tdata->temp_file, 0);
  unlink(tdata->temp_file);
 }

 free(tdata);
}
