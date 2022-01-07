; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_open_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_open_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_2__ = type { %struct.ocfs2_lock_res, i64 }

@.str = private unnamed_addr constant [34 x i8] c"inode %llu take PRMODE open lock\0A\00", align 1
@DLM_LOCK_PR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_open_lock(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_lock_res*, align 8
  %5 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ocfs2_super* @OCFS2_SB(i32 %8)
  store %struct.ocfs2_super* %9, %struct.ocfs2_super** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = icmp ne %struct.inode* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = call i32 (...) @mlog_entry_void()
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %22 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %42

25:                                               ; preds = %1
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.ocfs2_lock_res* %28, %struct.ocfs2_lock_res** %4, align 8
  %29 = load %struct.inode*, %struct.inode** %2, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.ocfs2_super* @OCFS2_SB(i32 %31)
  %33 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %34 = load i32, i32* @DLM_LOCK_PR, align 4
  %35 = call i32 @ocfs2_cluster_lock(%struct.ocfs2_super* %32, %struct.ocfs2_lock_res* %33, i32 %34, i32 0, i32 0)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %41

41:                                               ; preds = %38, %25
  br label %42

42:                                               ; preds = %41, %24
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @mlog_exit(i32 %43)
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_cluster_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
