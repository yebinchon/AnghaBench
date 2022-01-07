; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_dinode_insert_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_dinode_insert_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_extent_rec = type { i32 }
%struct.ocfs2_inode_info = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_super = type { i32 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Device %s, asking for sparse allocation: inode %llu, cpos %u, clusters %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*)* @ocfs2_dinode_insert_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dinode_insert_check(%struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_rec* %1) #0 {
  %3 = alloca %struct.ocfs2_extent_tree*, align 8
  %4 = alloca %struct.ocfs2_extent_rec*, align 8
  %5 = alloca %struct.ocfs2_inode_info*, align 8
  %6 = alloca %struct.ocfs2_super*, align 8
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %3, align 8
  store %struct.ocfs2_extent_rec* %1, %struct.ocfs2_extent_rec** %4, align 8
  %7 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ocfs2_inode_info* @cache_info_to_inode(i32 %9)
  store %struct.ocfs2_inode_info* %10, %struct.ocfs2_inode_info** %5, align 8
  %11 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %5, align 8
  %12 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.ocfs2_super* @OCFS2_SB(i32 %14)
  store %struct.ocfs2_super* %15, %struct.ocfs2_super** %6, align 8
  %16 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %5, align 8
  %17 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %20 = and i32 %18, %19
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %23 = call i32 @ocfs2_sparse_alloc(%struct.ocfs2_super* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %2
  %26 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %5, align 8
  %27 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %4, align 8
  %30 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le32_to_cpu(i32 %31)
  %33 = icmp ne i64 %28, %32
  br label %34

34:                                               ; preds = %25, %2
  %35 = phi i1 [ false, %2 ], [ %33, %25 ]
  %36 = zext i1 %35 to i32
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %38 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %5, align 8
  %41 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %4, align 8
  %44 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %5, align 8
  %47 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @mlog_bug_on_msg(i32 %36, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %42, i32 %45, i64 %48)
  ret i32 0
}

declare dso_local %struct.ocfs2_inode_info* @cache_info_to_inode(i32) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, i64, i32, i64) #1

declare dso_local i32 @ocfs2_sparse_alloc(%struct.ocfs2_super*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
