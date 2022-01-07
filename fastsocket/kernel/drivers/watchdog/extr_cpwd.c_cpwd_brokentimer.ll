; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_cpwd.c_cpwd_brokentimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_cpwd.c_cpwd_brokentimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.cpwd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@cpwd_timer = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@WD_NUMDEVS = common dso_local global i32 0, align 4
@WD_STAT_BSTOP = common dso_local global i32 0, align 4
@WD_BTIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @cpwd_brokentimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpwd_brokentimer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cpwd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.cpwd*
  store %struct.cpwd* %7, %struct.cpwd** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = call i64 @timer_pending(%struct.TYPE_7__* @cpwd_timer)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @del_timer(%struct.TYPE_7__* @cpwd_timer)
  br label %12

12:                                               ; preds = %10, %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %36, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @WD_NUMDEVS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load %struct.cpwd*, %struct.cpwd** %3, align 8
  %19 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @WD_STAT_BSTOP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = load %struct.cpwd*, %struct.cpwd** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @cpwd_resetbrokentimer(%struct.cpwd* %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %17
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %13

39:                                               ; preds = %13
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @WD_BTIMEOUT, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cpwd_timer, i32 0, i32 0), align 4
  %44 = call i32 @add_timer(%struct.TYPE_7__* @cpwd_timer)
  br label %45

45:                                               ; preds = %42, %39
  ret void
}

declare dso_local i64 @timer_pending(%struct.TYPE_7__*) #1

declare dso_local i32 @del_timer(%struct.TYPE_7__*) #1

declare dso_local i32 @cpwd_resetbrokentimer(%struct.cpwd*, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
