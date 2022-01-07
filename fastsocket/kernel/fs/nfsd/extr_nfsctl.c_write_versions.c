
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int ssize_t ;


 int __write_versions (struct file*,char*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfsd_mutex ;

__attribute__((used)) static ssize_t write_versions(struct file *file, char *buf, size_t size)
{
 ssize_t rv;

 mutex_lock(&nfsd_mutex);
 rv = __write_versions(file, buf, size);
 mutex_unlock(&nfsd_mutex);
 return rv;
}
