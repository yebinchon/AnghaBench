
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_priv {scalar_t__ periods; scalar_t__ byte_offset; scalar_t__ period_len; scalar_t__ buffer_len; int * substream; } ;



__attribute__((used)) static void fsi_stream_pop(struct fsi_priv *fsi)
{
 fsi->substream = ((void*)0);
 fsi->buffer_len = 0;
 fsi->period_len = 0;
 fsi->byte_offset = 0;
 fsi->periods = 0;
}
