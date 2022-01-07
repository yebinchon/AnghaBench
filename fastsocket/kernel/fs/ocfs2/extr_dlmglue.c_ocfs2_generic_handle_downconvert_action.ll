; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_generic_handle_downconvert_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_generic_handle_downconvert_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i64, i64, i64 }

@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@OCFS2_LOCK_ATTACHED = common dso_local global i32 0, align 4
@OCFS2_LOCK_BLOCKED = common dso_local global i32 0, align 4
@DLM_LOCK_NL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_lock_res*)* @ocfs2_generic_handle_downconvert_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_generic_handle_downconvert_action(%struct.ocfs2_lock_res* %0) #0 {
  %2 = alloca %struct.ocfs2_lock_res*, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %2, align 8
  %3 = call i32 (...) @mlog_entry_void()
  %4 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %14 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @OCFS2_LOCK_ATTACHED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %23 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %32 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DLM_LOCK_NL, align 8
  %35 = icmp sle i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %39 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %42 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %44 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %47 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @ocfs2_highest_compat_lock_level(i64 %48)
  %50 = icmp sle i64 %45, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %1
  %52 = load i64, i64* @DLM_LOCK_NL, align 8
  %53 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %54 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %56 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %57 = call i32 @lockres_clear_flags(%struct.ocfs2_lock_res* %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %1
  %59 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %60 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %61 = call i32 @lockres_clear_flags(%struct.ocfs2_lock_res* %59, i32 %60)
  %62 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ocfs2_highest_compat_lock_level(i64) #1

declare dso_local i32 @lockres_clear_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
