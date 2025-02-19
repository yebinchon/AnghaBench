; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_link_watch.c_linkwatch_schedule_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_link_watch.c_linkwatch_schedule_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@linkwatch_nextevent = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@LW_URGENT = common dso_local global i32 0, align 4
@linkwatch_flags = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@linkwatch_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @linkwatch_schedule_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linkwatch_schedule_work(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @linkwatch_nextevent, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = sub i64 %4, %5
  store i64 %6, i64* %3, align 8
  %7 = load i32, i32* @LW_URGENT, align 4
  %8 = call i64 @test_bit(i32 %7, i32* @linkwatch_flags)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %45

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* @LW_URGENT, align 4
  %16 = call i64 @test_and_set_bit(i32 %15, i32* @linkwatch_flags)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %45

19:                                               ; preds = %14
  store i64 0, i64* %3, align 8
  br label %20

20:                                               ; preds = %19, %11
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @HZ, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i64 0, i64* %3, align 8
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @schedule_delayed_watch(i32* @linkwatch_work, i64 %26)
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = icmp eq i32 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %45

34:                                               ; preds = %25
  %35 = load i32, i32* @LW_URGENT, align 4
  %36 = call i64 @test_bit(i32 %35, i32* @linkwatch_flags)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %45

39:                                               ; preds = %34
  %40 = call i32 @__cancel_delayed_work(i32* @linkwatch_work)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %45

43:                                               ; preds = %39
  %44 = call i32 @schedule_delayed_watch(i32* @linkwatch_work, i64 0)
  br label %45

45:                                               ; preds = %43, %42, %38, %33, %18, %10
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @schedule_delayed_watch(i32*, i64) #1

declare dso_local i32 @__cancel_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
