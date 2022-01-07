
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ apr_status_t ;
typedef scalar_t__ apr_off_t ;
struct TYPE_4__ {int direction; scalar_t__ bufpos; scalar_t__ dataRead; scalar_t__ filePtr; int filedes; } ;
typedef TYPE_1__ apr_file_t ;


 scalar_t__ APR_SUCCESS ;
 int SEEK_SET ;
 scalar_t__ apr_file_flush_locked (TYPE_1__*) ;
 scalar_t__ errno ;
 int lseek (int ,scalar_t__,int ) ;

__attribute__((used)) static apr_status_t setptr(apr_file_t *thefile, apr_off_t pos )
{
    apr_off_t newbufpos;
    apr_status_t rv;

    if (thefile->direction == 1) {
        rv = apr_file_flush_locked(thefile);
        if (rv) {
            return rv;
        }
        thefile->bufpos = thefile->direction = thefile->dataRead = 0;
    }

    newbufpos = pos - (thefile->filePtr - thefile->dataRead);
    if (newbufpos >= 0 && newbufpos <= thefile->dataRead) {
        thefile->bufpos = newbufpos;
        rv = APR_SUCCESS;
    }
    else {
        if (lseek(thefile->filedes, pos, SEEK_SET) != -1) {
            thefile->bufpos = thefile->dataRead = 0;
            thefile->filePtr = pos;
            rv = APR_SUCCESS;
        }
        else {
            rv = errno;
        }
    }

    return rv;
}
