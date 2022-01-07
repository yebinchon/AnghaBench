; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_handle_early_requeue_pi_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_futex.c_handle_early_requeue_pi_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_hash_bucket = type { i32 }
%struct.futex_q = type { %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%union.futex_key = type { i32 }
%struct.hrtimer_sleeper = type { i32 }

@EWOULDBLOCK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTNOINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.futex_hash_bucket*, %struct.futex_q*, %union.futex_key*, %struct.hrtimer_sleeper*)* @handle_early_requeue_pi_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_early_requeue_pi_wakeup(%struct.futex_hash_bucket* %0, %struct.futex_q* %1, %union.futex_key* %2, %struct.hrtimer_sleeper* %3) #0 {
  %5 = alloca %struct.futex_hash_bucket*, align 8
  %6 = alloca %struct.futex_q*, align 8
  %7 = alloca %union.futex_key*, align 8
  %8 = alloca %struct.hrtimer_sleeper*, align 8
  %9 = alloca i32, align 4
  store %struct.futex_hash_bucket* %0, %struct.futex_hash_bucket** %5, align 8
  store %struct.futex_q* %1, %struct.futex_q** %6, align 8
  store %union.futex_key* %2, %union.futex_key** %7, align 8
  store %struct.hrtimer_sleeper* %3, %struct.hrtimer_sleeper** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.futex_q*, %struct.futex_q** %6, align 8
  %11 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %10, i32 0, i32 2
  %12 = load %union.futex_key*, %union.futex_key** %7, align 8
  %13 = call i32 @match_futex(i32* %11, %union.futex_key* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %58, label %15

15:                                               ; preds = %4
  %16 = load %struct.futex_q*, %struct.futex_q** %6, align 8
  %17 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %5, align 8
  %22 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %21, i32 0, i32 0
  %23 = load %struct.futex_q*, %struct.futex_q** %6, align 8
  %24 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %22, %25
  br label %27

27:                                               ; preds = %20, %15
  %28 = phi i1 [ false, %15 ], [ %26, %20 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.futex_q*, %struct.futex_q** %6, align 8
  %32 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %31, i32 0, i32 0
  %33 = load %struct.futex_q*, %struct.futex_q** %6, align 8
  %34 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @plist_del(%struct.TYPE_2__* %32, i32* %35)
  %37 = load i32, i32* @EWOULDBLOCK, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %8, align 8
  %40 = icmp ne %struct.hrtimer_sleeper* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %27
  %42 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %8, align 8
  %43 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ETIMEDOUT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %57

49:                                               ; preds = %41, %27
  %50 = load i32, i32* @current, align 4
  %51 = call i64 @signal_pending(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @ERESTARTNOINTR, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %46
  br label %58

58:                                               ; preds = %57, %4
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32 @match_futex(i32*, %union.futex_key*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @plist_del(%struct.TYPE_2__*, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
