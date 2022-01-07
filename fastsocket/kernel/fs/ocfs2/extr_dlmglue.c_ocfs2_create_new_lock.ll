; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_create_new_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_create_new_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_lock_res = type { i32, i32 }

@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@DLM_LKF_LOCAL = common dso_local global i32 0, align 4
@OCFS2_LOCK_ATTACHED = common dso_local global i32 0, align 4
@OCFS2_LOCK_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32)* @ocfs2_create_new_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_create_new_lock(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca %struct.ocfs2_lock_res*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @DLM_LOCK_EX, align 4
  br label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @DLM_LOCK_PR, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @DLM_LKF_LOCAL, align 4
  br label %25

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  store i32 %26, i32* %11, align 4
  %27 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %28 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %27, i32 0, i32 1
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %32 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @OCFS2_LOCK_ATTACHED, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %38 = load i32, i32* @OCFS2_LOCK_LOCAL, align 4
  %39 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %37, i32 %38)
  %40 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %41 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %40, i32 0, i32 1
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %45 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @ocfs2_lock_create(%struct.ocfs2_super* %44, %struct.ocfs2_lock_res* %45, i32 %46, i32 %47)
  ret i32 %48
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @lockres_or_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ocfs2_lock_create(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
