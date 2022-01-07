
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_glock {unsigned long gl_flags; scalar_t__ gl_object; } ;


 int GLF_BLOCKING ;
 int GLF_DEMOTE ;
 int GLF_DEMOTE_IN_PROGRESS ;
 int GLF_DIRTY ;
 int GLF_FROZEN ;
 int GLF_INITIAL ;
 int GLF_INVALIDATE_IN_PROGRESS ;
 int GLF_LFLUSH ;
 int GLF_LOCK ;
 int GLF_LRU ;
 int GLF_PENDING_DEMOTE ;
 int GLF_QUEUED ;
 int GLF_REPLY_PENDING ;
 scalar_t__ test_bit (int ,unsigned long const*) ;

__attribute__((used)) static const char *gflags2str(char *buf, const struct gfs2_glock *gl)
{
 const unsigned long *gflags = &gl->gl_flags;
 char *p = buf;

 if (test_bit(GLF_LOCK, gflags))
  *p++ = 'l';
 if (test_bit(GLF_DEMOTE, gflags))
  *p++ = 'D';
 if (test_bit(GLF_PENDING_DEMOTE, gflags))
  *p++ = 'd';
 if (test_bit(GLF_DEMOTE_IN_PROGRESS, gflags))
  *p++ = 'p';
 if (test_bit(GLF_DIRTY, gflags))
  *p++ = 'y';
 if (test_bit(GLF_LFLUSH, gflags))
  *p++ = 'f';
 if (test_bit(GLF_INVALIDATE_IN_PROGRESS, gflags))
  *p++ = 'i';
 if (test_bit(GLF_REPLY_PENDING, gflags))
  *p++ = 'r';
 if (test_bit(GLF_INITIAL, gflags))
  *p++ = 'I';
 if (test_bit(GLF_FROZEN, gflags))
  *p++ = 'F';
 if (test_bit(GLF_QUEUED, gflags))
  *p++ = 'q';
 if (test_bit(GLF_LRU, gflags))
  *p++ = 'L';
 if (gl->gl_object)
  *p++ = 'o';
 if (test_bit(GLF_BLOCKING, gflags))
  *p++ = 'b';
 *p = 0;
 return buf;
}
