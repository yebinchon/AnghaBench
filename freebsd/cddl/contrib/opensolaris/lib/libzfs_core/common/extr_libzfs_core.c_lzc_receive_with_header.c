
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int dmu_replay_record_t ;
typedef int boolean_t ;


 int EINVAL ;
 int recv_impl (char const*,int *,char const*,int ,int ,int,int const*) ;

int
lzc_receive_with_header(const char *snapname, nvlist_t *props,
    const char *origin, boolean_t force, boolean_t resumable, int fd,
    const dmu_replay_record_t *begin_record)
{
 if (begin_record == ((void*)0))
  return (EINVAL);
 return (recv_impl(snapname, props, origin, force, resumable, fd,
     begin_record));
}
