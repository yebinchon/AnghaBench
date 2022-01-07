; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutorture.c_rcu_stutter_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutorture.c_rcu_stutter_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stutter_pause_test = common dso_local global i64 0, align 8
@rcutorture_runnable = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rcu_stutter_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcu_stutter_wait(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %21, %1
  %4 = load i64, i64* @stutter_pause_test, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = load i64, i64* @rcutorture_runnable, align 8
  %8 = icmp ne i64 %7, 0
  %9 = xor i1 %8, true
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i1 [ true, %3 ], [ %9, %6 ]
  br i1 %11, label %12, label %24

12:                                               ; preds = %10
  %13 = load i64, i64* @rcutorture_runnable, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 @schedule_timeout_interruptible(i32 1)
  br label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @HZ, align 4
  %19 = call i32 @round_jiffies_relative(i32 %18)
  %20 = call i32 @schedule_timeout_interruptible(i32 %19)
  br label %21

21:                                               ; preds = %17, %15
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @rcutorture_shutdown_absorb(i8* %22)
  br label %3

24:                                               ; preds = %10
  ret void
}

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

declare dso_local i32 @rcutorture_shutdown_absorb(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
