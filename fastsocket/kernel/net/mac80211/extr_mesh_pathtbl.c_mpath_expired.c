
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_path {int flags; int exp_time; } ;


 int MESH_PATH_ACTIVE ;
 int MESH_PATH_FIXED ;
 int jiffies ;
 scalar_t__ time_after (int ,int ) ;

__attribute__((used)) static inline bool mpath_expired(struct mesh_path *mpath)
{
 return (mpath->flags & MESH_PATH_ACTIVE) &&
        time_after(jiffies, mpath->exp_time) &&
        !(mpath->flags & MESH_PATH_FIXED);
}
