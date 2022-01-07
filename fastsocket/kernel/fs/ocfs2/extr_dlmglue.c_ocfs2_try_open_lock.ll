; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_try_open_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_try_open_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_2__ = type { %struct.ocfs2_lock_res, i64 }

@.str = private unnamed_addr constant [37 x i8] c"inode %llu try to take %s open lock\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"EXMODE\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"PRMODE\00", align 1
@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_try_open_lock(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_lock_res*, align 8
  %8 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ocfs2_super* @OCFS2_SB(i32 %11)
  store %struct.ocfs2_super* %12, %struct.ocfs2_super** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = icmp ne %struct.inode* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = call i32 (...) @mlog_entry_void()
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %22, i8* %26)
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %29 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %52

32:                                               ; preds = %2
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.ocfs2_lock_res* %35, %struct.ocfs2_lock_res** %7, align 8
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @DLM_LOCK_EX, align 4
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @DLM_LOCK_PR, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %6, align 4
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.ocfs2_super* @OCFS2_SB(i32 %46)
  %48 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %51 = call i32 @ocfs2_cluster_lock(%struct.ocfs2_super* %47, %struct.ocfs2_lock_res* %48, i32 %49, i32 %50, i32 0)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %42, %31
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @mlog_exit(i32 %53)
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @mlog(i32, i8*, i64, i8*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_cluster_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32, i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
