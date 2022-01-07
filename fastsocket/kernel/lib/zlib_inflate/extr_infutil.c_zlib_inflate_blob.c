
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct z_stream_s {unsigned int avail_in; unsigned int avail_out; struct z_stream_s* workspace; void* next_out; int const* next_in; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_WBITS ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int kfree (struct z_stream_s*) ;
 void* kmalloc (int,int ) ;
 int zlib_inflate (struct z_stream_s*,int ) ;
 int zlib_inflateEnd (struct z_stream_s*) ;
 int zlib_inflateInit2 (struct z_stream_s*,int ) ;
 int zlib_inflate_workspacesize () ;

int zlib_inflate_blob(void *gunzip_buf, unsigned int sz,
        const void *buf, unsigned int len)
{
 const u8 *zbuf = buf;
 struct z_stream_s *strm;
 int rc;

 rc = -ENOMEM;
 strm = kmalloc(sizeof(*strm), GFP_KERNEL);
 if (strm == ((void*)0))
  goto gunzip_nomem1;
 strm->workspace = kmalloc(zlib_inflate_workspacesize(), GFP_KERNEL);
 if (strm->workspace == ((void*)0))
  goto gunzip_nomem2;




 strm->next_in = zbuf;
 strm->avail_in = len;
 strm->next_out = gunzip_buf;
 strm->avail_out = sz;

 rc = zlib_inflateInit2(strm, -MAX_WBITS);
 if (rc == Z_OK) {
  rc = zlib_inflate(strm, Z_FINISH);

  if (rc == Z_STREAM_END)
   rc = sz - strm->avail_out;
  else
   rc = -EINVAL;
  zlib_inflateEnd(strm);
 } else
  rc = -EINVAL;

 kfree(strm->workspace);
gunzip_nomem2:
 kfree(strm);
gunzip_nomem1:
 return rc;
}
