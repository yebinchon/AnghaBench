; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_recover_from_dlm_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_recover_from_dlm_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32, i32, i32 }

@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@OCFS2_AST_INVALID = common dso_local global i32 0, align 4
@OCFS2_UNLOCK_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_lock_res*, i32)* @ocfs2_recover_from_dlm_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_recover_from_dlm_error(%struct.ocfs2_lock_res* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_lock_res*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @mlog_entry_void()
  %7 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %12 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %13 = call i32 @lockres_clear_flags(%struct.ocfs2_lock_res* %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @OCFS2_AST_INVALID, align 4
  %18 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %19 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @OCFS2_UNLOCK_INVALID, align 4
  %22 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %23 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %26 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %25, i32 0, i32 1
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %30 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %29, i32 0, i32 0
  %31 = call i32 @wake_up(i32* %30)
  %32 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lockres_clear_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
