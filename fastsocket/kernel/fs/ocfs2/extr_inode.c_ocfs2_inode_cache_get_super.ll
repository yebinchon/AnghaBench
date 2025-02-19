; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_inode_cache_get_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_inode_cache_get_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.ocfs2_inode_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.super_block* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.super_block* (%struct.ocfs2_caching_info*)* @ocfs2_inode_cache_get_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.super_block* @ocfs2_inode_cache_get_super(%struct.ocfs2_caching_info* %0) #0 {
  %2 = alloca %struct.ocfs2_caching_info*, align 8
  %3 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %2, align 8
  %4 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %2, align 8
  %5 = call %struct.ocfs2_inode_info* @cache_info_to_inode(%struct.ocfs2_caching_info* %4)
  store %struct.ocfs2_inode_info* %5, %struct.ocfs2_inode_info** %3, align 8
  %6 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  ret %struct.super_block* %9
}

declare dso_local %struct.ocfs2_inode_info* @cache_info_to_inode(%struct.ocfs2_caching_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
