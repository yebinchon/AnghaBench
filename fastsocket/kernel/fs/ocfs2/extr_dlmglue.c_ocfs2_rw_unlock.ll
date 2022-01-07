; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_rw_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_rw_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_2__ = type { i64, %struct.ocfs2_lock_res }

@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"inode %llu drop %s RW lock\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"EXMODE\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"PRMODE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_rw_unlock(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_lock_res*, align 8
  %7 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @DLM_LOCK_EX, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @DLM_LOCK_PR, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %5, align 4
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.ocfs2_lock_res* %18, %struct.ocfs2_lock_res** %6, align 8
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ocfs2_super* @OCFS2_SB(i32 %21)
  store %struct.ocfs2_super* %22, %struct.ocfs2_super** %7, align 8
  %23 = call i32 (...) @mlog_entry_void()
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %27, i8* %31)
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %34 = call i32 @ocfs2_mount_local(%struct.ocfs2_super* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %14
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.ocfs2_super* @OCFS2_SB(i32 %39)
  %41 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ocfs2_cluster_unlock(%struct.ocfs2_super* %40, %struct.ocfs2_lock_res* %41, i32 %42)
  br label %44

44:                                               ; preds = %36, %14
  %45 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @mlog(i32, i8*, i64, i8*) #1

declare dso_local i32 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_cluster_unlock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
