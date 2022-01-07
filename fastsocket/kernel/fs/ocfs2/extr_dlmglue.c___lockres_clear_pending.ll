; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c___lockres_clear_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c___lockres_clear_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32, i32 }
%struct.ocfs2_super = type { i32 }

@OCFS2_LOCK_PENDING = common dso_local global i32 0, align 4
@OCFS2_LOCK_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_lock_res*, i32, %struct.ocfs2_super*)* @__lockres_clear_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lockres_clear_pending(%struct.ocfs2_lock_res* %0, i32 %1, %struct.ocfs2_super* %2) #0 {
  %4 = alloca %struct.ocfs2_lock_res*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_super*, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ocfs2_super* %2, %struct.ocfs2_super** %6, align 8
  %7 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %8 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %7, i32 0, i32 2
  %9 = call i32 @assert_spin_locked(i32* %8)
  %10 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %11 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @OCFS2_LOCK_PENDING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %18 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %3
  br label %40

23:                                               ; preds = %16
  %24 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %25 = load i32, i32* @OCFS2_LOCK_PENDING, align 4
  %26 = call i32 @lockres_clear_flags(%struct.ocfs2_lock_res* %24, i32 %25)
  %27 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %28 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %32 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @OCFS2_LOCK_BLOCKED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %39 = call i32 @ocfs2_wake_downconvert_thread(%struct.ocfs2_super* %38)
  br label %40

40:                                               ; preds = %22, %37, %23
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @lockres_clear_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_wake_downconvert_thread(%struct.ocfs2_super*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
