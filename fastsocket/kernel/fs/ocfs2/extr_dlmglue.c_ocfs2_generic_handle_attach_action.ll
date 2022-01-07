; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_generic_handle_attach_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_generic_handle_attach_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OCFS2_LOCK_BUSY = common dso_local global i32 0, align 4
@OCFS2_LOCK_ATTACHED = common dso_local global i32 0, align 4
@DLM_LOCK_NL = common dso_local global i64 0, align 8
@OCFS2_LOCK_LOCAL = common dso_local global i32 0, align 4
@LOCK_TYPE_REQUIRES_REFRESH = common dso_local global i32 0, align 4
@OCFS2_LOCK_NEEDS_REFRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_lock_res*)* @ocfs2_generic_handle_attach_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_generic_handle_attach_action(%struct.ocfs2_lock_res* %0) #0 {
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
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %20 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DLM_LOCK_NL, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %1
  %25 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %26 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @OCFS2_LOCK_LOCAL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %24
  %32 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %33 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @LOCK_TYPE_REQUIRES_REFRESH, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %42 = load i32, i32* @OCFS2_LOCK_NEEDS_REFRESH, align 4
  %43 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %31, %24, %1
  %45 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %46 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %49 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %51 = load i32, i32* @OCFS2_LOCK_ATTACHED, align 4
  %52 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %50, i32 %51)
  %53 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %54 = load i32, i32* @OCFS2_LOCK_BUSY, align 4
  %55 = call i32 @lockres_clear_flags(%struct.ocfs2_lock_res* %53, i32 %54)
  %56 = call i32 (...) @mlog_exit_void()
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
