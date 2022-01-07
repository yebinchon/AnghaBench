; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_lockres_remove_mask_waiter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_lockres_remove_mask_waiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32 }
%struct.ocfs2_mask_waiter = type { i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_lock_res*, %struct.ocfs2_mask_waiter*)* @lockres_remove_mask_waiter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lockres_remove_mask_waiter(%struct.ocfs2_lock_res* %0, %struct.ocfs2_mask_waiter* %1) #0 {
  %3 = alloca %struct.ocfs2_lock_res*, align 8
  %4 = alloca %struct.ocfs2_mask_waiter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %3, align 8
  store %struct.ocfs2_mask_waiter* %1, %struct.ocfs2_mask_waiter** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ocfs2_mask_waiter*, %struct.ocfs2_mask_waiter** %4, align 8
  %12 = getelementptr inbounds %struct.ocfs2_mask_waiter, %struct.ocfs2_mask_waiter* %11, i32 0, i32 3
  %13 = call i32 @list_empty(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %2
  %16 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %17 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ocfs2_mask_waiter*, %struct.ocfs2_mask_waiter** %4, align 8
  %20 = getelementptr inbounds %struct.ocfs2_mask_waiter, %struct.ocfs2_mask_waiter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  %23 = load %struct.ocfs2_mask_waiter*, %struct.ocfs2_mask_waiter** %4, align 8
  %24 = getelementptr inbounds %struct.ocfs2_mask_waiter, %struct.ocfs2_mask_waiter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %15
  %31 = load %struct.ocfs2_mask_waiter*, %struct.ocfs2_mask_waiter** %4, align 8
  %32 = getelementptr inbounds %struct.ocfs2_mask_waiter, %struct.ocfs2_mask_waiter* %31, i32 0, i32 3
  %33 = call i32 @list_del_init(i32* %32)
  %34 = load %struct.ocfs2_mask_waiter*, %struct.ocfs2_mask_waiter** %4, align 8
  %35 = getelementptr inbounds %struct.ocfs2_mask_waiter, %struct.ocfs2_mask_waiter* %34, i32 0, i32 2
  %36 = call i32 @init_completion(i32* %35)
  br label %37

37:                                               ; preds = %30, %2
  %38 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %3, align 8
  %39 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %38, i32 0, i32 1
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
