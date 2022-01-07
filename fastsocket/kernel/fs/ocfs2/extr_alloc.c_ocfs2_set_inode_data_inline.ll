; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_set_inode_data_inline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_set_inode_data_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ocfs2_inline_data }
%struct.ocfs2_inline_data = type { i8* }
%struct.ocfs2_inode_info = type { i32, i32 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_set_inode_data_inline(%struct.inode* %0, %struct.ocfs2_dinode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ocfs2_dinode*, align 8
  %5 = alloca %struct.ocfs2_inode_info*, align 8
  %6 = alloca %struct.ocfs2_inline_data*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %7)
  store %struct.ocfs2_inode_info* %8, %struct.ocfs2_inode_info** %5, align 8
  %9 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %10 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.ocfs2_inline_data* %11, %struct.ocfs2_inline_data** %6, align 8
  %12 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %5, align 8
  %13 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %16 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %5, align 8
  %17 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %5, align 8
  %21 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %25 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %5, align 8
  %27 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %31 = call i32 @ocfs2_zero_dinode_id2_with_xattr(%struct.inode* %29, %struct.ocfs2_dinode* %30)
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %36 = call i32 @ocfs2_max_inline_data_with_xattr(i32 %34, %struct.ocfs2_dinode* %35)
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = load %struct.ocfs2_inline_data*, %struct.ocfs2_inline_data** %6, align 8
  %39 = getelementptr inbounds %struct.ocfs2_inline_data, %struct.ocfs2_inline_data* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  ret void
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_zero_dinode_id2_with_xattr(%struct.inode*, %struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_max_inline_data_with_xattr(i32, %struct.ocfs2_dinode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
