; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntlock.c_nlmclnt_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntlock.c_nlmclnt_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_wait = type { i64, i32 }
%struct.nlm_rqst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@nlm_lck_blocked = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlmclnt_block(%struct.nlm_wait* %0, %struct.nlm_rqst* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlm_wait*, align 8
  %6 = alloca %struct.nlm_rqst*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nlm_wait* %0, %struct.nlm_wait** %5, align 8
  store %struct.nlm_rqst* %1, %struct.nlm_rqst** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.nlm_wait*, %struct.nlm_wait** %5, align 8
  %10 = icmp eq %struct.nlm_wait* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EAGAIN, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %38

14:                                               ; preds = %3
  %15 = load %struct.nlm_wait*, %struct.nlm_wait** %5, align 8
  %16 = getelementptr inbounds %struct.nlm_wait, %struct.nlm_wait* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nlm_wait*, %struct.nlm_wait** %5, align 8
  %19 = getelementptr inbounds %struct.nlm_wait, %struct.nlm_wait* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @nlm_lck_blocked, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @wait_event_interruptible_timeout(i32 %17, i32 %23, i64 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %14
  %29 = load i32, i32* @ERESTARTSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %38

31:                                               ; preds = %14
  %32 = load %struct.nlm_wait*, %struct.nlm_wait** %5, align 8
  %33 = getelementptr inbounds %struct.nlm_wait, %struct.nlm_wait* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.nlm_rqst*, %struct.nlm_rqst** %6, align 8
  %36 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %31, %28, %11
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
