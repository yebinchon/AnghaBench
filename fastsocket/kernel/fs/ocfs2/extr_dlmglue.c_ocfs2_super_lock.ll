; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_super_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_super_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { i32 }

@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_super_lock(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_lock_res*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @DLM_LOCK_EX, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @DLM_LOCK_PR, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %18 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %17, i32 0, i32 0
  store %struct.ocfs2_lock_res* %18, %struct.ocfs2_lock_res** %8, align 8
  %19 = call i32 (...) @mlog_entry_void()
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %21 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @EROFS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %71

26:                                               ; preds = %15
  %27 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %28 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %67

31:                                               ; preds = %26
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %33 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ocfs2_cluster_lock(%struct.ocfs2_super* %32, %struct.ocfs2_lock_res* %33, i32 %34, i32 0, i32 0)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %67

41:                                               ; preds = %31
  %42 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %43 = call i32 @ocfs2_should_refresh_lock_res(%struct.ocfs2_lock_res* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @mlog_errno(i32 %47)
  br label %67

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %54 = call i32 @ocfs2_refresh_slot_info(%struct.ocfs2_super* %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @ocfs2_complete_lock_res_refresh(%struct.ocfs2_lock_res* %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %63

63:                                               ; preds = %60, %52
  %64 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %65 = call i32 @ocfs2_track_lock_refresh(%struct.ocfs2_lock_res* %64)
  br label %66

66:                                               ; preds = %63, %49
  br label %67

67:                                               ; preds = %66, %46, %38, %30
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @mlog_exit(i32 %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %23
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_cluster_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_should_refresh_lock_res(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_refresh_slot_info(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_complete_lock_res_refresh(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_track_lock_refresh(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
