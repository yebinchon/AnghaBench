; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_cpwd.c_cpwd_pingtimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_cpwd.c_cpwd_pingtimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpwd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@WD_STATUS = common dso_local global i64 0, align 8
@WD_S_RUNNING = common dso_local global i32 0, align 4
@WD_DCNTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpwd*, i32)* @cpwd_pingtimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpwd_pingtimer(%struct.cpwd* %0, i32 %1) #0 {
  %3 = alloca %struct.cpwd*, align 8
  %4 = alloca i32, align 4
  store %struct.cpwd* %0, %struct.cpwd** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cpwd*, %struct.cpwd** %3, align 8
  %6 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @WD_STATUS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @cpwd_readb(i64 %14)
  %16 = load i32, i32* @WD_S_RUNNING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.cpwd*, %struct.cpwd** %3, align 8
  %21 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WD_DCNTR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @cpwd_readw(i64 %29)
  br label %31

31:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @cpwd_readb(i64) #1

declare dso_local i32 @cpwd_readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
