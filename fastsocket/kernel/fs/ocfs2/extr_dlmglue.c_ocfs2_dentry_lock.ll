; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_dentry_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_dentry_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.ocfs2_dentry_lock* }
%struct.ocfs2_dentry_lock = type { i32 }
%struct.ocfs2_super = type { i32 }

@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_dentry_lock(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_dentry_lock*, align 8
  %9 = alloca %struct.ocfs2_super*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @DLM_LOCK_EX, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @DLM_LOCK_PR, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %7, align 4
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %19, align 8
  store %struct.ocfs2_dentry_lock* %20, %struct.ocfs2_dentry_lock** %8, align 8
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.ocfs2_super* @OCFS2_SB(i32 %23)
  store %struct.ocfs2_super* %24, %struct.ocfs2_super** %9, align 8
  %25 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %8, align 8
  %26 = icmp ne %struct.ocfs2_dentry_lock* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %31 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %16
  %34 = load i32, i32* @EROFS, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %54

36:                                               ; preds = %16
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %38 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %54

41:                                               ; preds = %36
  %42 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %43 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %8, align 8
  %44 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %43, i32 0, i32 0
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ocfs2_cluster_lock(%struct.ocfs2_super* %42, i32* %44, i32 %45, i32 0, i32 0)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @mlog_errno(i32 %50)
  br label %52

52:                                               ; preds = %49, %41
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %40, %33
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_cluster_lock(%struct.ocfs2_super*, i32*, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
