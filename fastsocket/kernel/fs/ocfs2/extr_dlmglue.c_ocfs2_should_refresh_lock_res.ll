; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_should_refresh_lock_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_should_refresh_lock_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32 }

@OCFS2_LOCK_NEEDS_REFRESH = common dso_local global i32 0, align 4
@OCFS2_LOCK_REFRESHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_lock_res*)* @ocfs2_should_refresh_lock_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_should_refresh_lock_res(%struct.ocfs2_lock_res* %0) #0 {
  %2 = alloca %struct.ocfs2_lock_res*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 (...) @mlog_entry_void()
  br label %6

6:                                                ; preds = %29, %1
  %7 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %8 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %7, i32 0, i32 1
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %12 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @OCFS2_LOCK_NEEDS_REFRESH, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %6
  %18 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %19 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %18, i32 0, i32 1
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  br label %44

22:                                               ; preds = %6
  %23 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %24 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @OCFS2_LOCK_REFRESHING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %31 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %30, i32 0, i32 1
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %35 = call i32 @ocfs2_wait_on_refreshing_lock(%struct.ocfs2_lock_res* %34)
  br label %6

36:                                               ; preds = %22
  %37 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %38 = load i32, i32* @OCFS2_LOCK_REFRESHING, align 4
  %39 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %37, i32 %38)
  %40 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %41 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %40, i32 0, i32 1
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %36, %17
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @mlog_exit(i32 %45)
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ocfs2_wait_on_refreshing_lock(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @lockres_or_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
