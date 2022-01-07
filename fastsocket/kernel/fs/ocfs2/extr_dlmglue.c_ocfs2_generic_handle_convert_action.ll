; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_generic_handle_convert_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_generic_handle_convert_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@OCFS2_LOCK_ATTACHED = common dso_local global i32 0, align 4
@DLM_LOCK_NL = common dso_local global i64 0, align 8
@LOCK_TYPE_REQUIRES_REFRESH = common dso_local global i32 0, align 4
@OCFS2_LOCK_NEEDS_REFRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_lock_res*)* @ocfs2_generic_handle_convert_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_generic_handle_convert_action(%struct.ocfs2_lock_res* %0) #0 {
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
  %23 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DLM_LOCK_NL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %1
  %28 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %29 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LOCK_TYPE_REQUIRES_REFRESH, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %38 = load i32, i32* @OCFS2_LOCK_NEEDS_REFRESH, align 4
  %39 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %27, %1
  %41 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %42 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %45 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %47 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %48 = call i32 @lockres_clear_flags(%struct.ocfs2_lock_res* %46, i32 %47)
  %49 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @lockres_or_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @lockres_clear_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
