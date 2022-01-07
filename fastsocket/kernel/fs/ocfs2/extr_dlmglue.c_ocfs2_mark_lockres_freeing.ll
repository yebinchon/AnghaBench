; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_mark_lockres_freeing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_mark_lockres_freeing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32, i32 }
%struct.ocfs2_mask_waiter = type { i32 }

@OCFS2_LOCK_FREEING = common dso_local global i32 0, align 4
@OCFS2_LOCK_QUEUED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Waiting on lockres %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_mark_lockres_freeing(%struct.ocfs2_lock_res* %0) #0 {
  %2 = alloca %struct.ocfs2_lock_res*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_mask_waiter, align 4
  %5 = alloca i64, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %2, align 8
  %6 = call i32 @ocfs2_init_mask_waiter(%struct.ocfs2_mask_waiter* %4)
  %7 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %8 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32, i32* @OCFS2_LOCK_FREEING, align 4
  %12 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %13 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  br label %16

16:                                               ; preds = %41, %1
  %17 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %18 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @OCFS2_LOCK_QUEUED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %16
  %24 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %25 = load i32, i32* @OCFS2_LOCK_QUEUED, align 4
  %26 = call i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res* %24, %struct.ocfs2_mask_waiter* %4, i32 %25, i32 0)
  %27 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %28 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %27, i32 0, i32 1
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %32 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = call i32 @ocfs2_wait_for_mask(%struct.ocfs2_mask_waiter* %4)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %23
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %41

41:                                               ; preds = %38, %23
  %42 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %43 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %42, i32 0, i32 1
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  br label %16

46:                                               ; preds = %16
  %47 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %48 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %47, i32 0, i32 1
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  ret void
}

declare dso_local i32 @ocfs2_init_mask_waiter(%struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lockres_add_mask_waiter(%struct.ocfs2_lock_res*, %struct.ocfs2_mask_waiter*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @ocfs2_wait_for_mask(%struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
