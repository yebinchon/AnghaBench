; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_dinode_new_extent_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_dinode_new_extent_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_dinode_new_extent_list(%struct.inode* %0, %struct.ocfs2_dinode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %7 = call i32 @ocfs2_zero_dinode_id2_with_xattr(%struct.inode* %5, %struct.ocfs2_dinode* %6)
  %8 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %9 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %20 = call i32 @ocfs2_extent_recs_per_inode_with_xattr(i32 %18, %struct.ocfs2_dinode* %19)
  %21 = call i32 @cpu_to_le16(i32 %20)
  %22 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %23 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 8
  ret void
}

declare dso_local i32 @ocfs2_zero_dinode_id2_with_xattr(%struct.inode*, %struct.ocfs2_dinode*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_extent_recs_per_inode_with_xattr(i32, %struct.ocfs2_dinode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
