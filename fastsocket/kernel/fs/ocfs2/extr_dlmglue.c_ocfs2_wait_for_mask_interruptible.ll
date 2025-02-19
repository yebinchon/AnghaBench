; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_wait_for_mask_interruptible.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_wait_for_mask_interruptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_mask_waiter = type { i32, i32 }
%struct.ocfs2_lock_res = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_mask_waiter*, %struct.ocfs2_lock_res*)* @ocfs2_wait_for_mask_interruptible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_wait_for_mask_interruptible(%struct.ocfs2_mask_waiter* %0, %struct.ocfs2_lock_res* %1) #0 {
  %3 = alloca %struct.ocfs2_mask_waiter*, align 8
  %4 = alloca %struct.ocfs2_lock_res*, align 8
  %5 = alloca i32, align 4
  store %struct.ocfs2_mask_waiter* %0, %struct.ocfs2_mask_waiter** %3, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %4, align 8
  %6 = load %struct.ocfs2_mask_waiter*, %struct.ocfs2_mask_waiter** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_mask_waiter, %struct.ocfs2_mask_waiter* %6, i32 0, i32 1
  %8 = call i32 @wait_for_completion_interruptible(i32* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %13 = load %struct.ocfs2_mask_waiter*, %struct.ocfs2_mask_waiter** %3, align 8
  %14 = call i32 @lockres_remove_mask_waiter(%struct.ocfs2_lock_res* %12, %struct.ocfs2_mask_waiter* %13)
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.ocfs2_mask_waiter*, %struct.ocfs2_mask_waiter** %3, align 8
  %17 = getelementptr inbounds %struct.ocfs2_mask_waiter, %struct.ocfs2_mask_waiter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.ocfs2_mask_waiter*, %struct.ocfs2_mask_waiter** %3, align 8
  %21 = getelementptr inbounds %struct.ocfs2_mask_waiter, %struct.ocfs2_mask_waiter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @INIT_COMPLETION(i32 %22)
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @lockres_remove_mask_waiter(%struct.ocfs2_lock_res*, %struct.ocfs2_mask_waiter*) #1

declare dso_local i32 @INIT_COMPLETION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
