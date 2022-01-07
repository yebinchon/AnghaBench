; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_dinode_update_clusters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_dinode_update_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { %struct.ocfs2_dinode*, i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_extent_tree*, i32)* @ocfs2_dinode_update_clusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_dinode_update_clusters(%struct.ocfs2_extent_tree* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_extent_tree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_inode_info*, align 8
  %6 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.ocfs2_inode_info* @cache_info_to_inode(i32 %9)
  store %struct.ocfs2_inode_info* %10, %struct.ocfs2_inode_info** %5, align 8
  %11 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %12 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %11, i32 0, i32 0
  %13 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  store %struct.ocfs2_dinode* %13, %struct.ocfs2_dinode** %6, align 8
  %14 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %15 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %14, i32 0, i32 0
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @le32_add_cpu(i32* %15, i32 %16)
  %18 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %5, align 8
  %19 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %22 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  %25 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %5, align 8
  %26 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %5, align 8
  %28 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  ret void
}

declare dso_local %struct.ocfs2_inode_info* @cache_info_to_inode(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
