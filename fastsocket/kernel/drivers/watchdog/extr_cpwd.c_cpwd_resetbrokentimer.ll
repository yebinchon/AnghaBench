; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_cpwd.c_cpwd_resetbrokentimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_cpwd.c_cpwd_resetbrokentimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpwd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@WD_INTR_ON = common dso_local global i32 0, align 4
@WD_BLIMIT = common dso_local global i32 0, align 4
@WD_LIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpwd*, i32)* @cpwd_resetbrokentimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpwd_resetbrokentimer(%struct.cpwd* %0, i32 %1) #0 {
  %3 = alloca %struct.cpwd*, align 8
  %4 = alloca i32, align 4
  store %struct.cpwd* %0, %struct.cpwd** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cpwd*, %struct.cpwd** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @WD_INTR_ON, align 4
  %8 = call i32 @cpwd_toggleintr(%struct.cpwd* %5, i32 %6, i32 %7)
  %9 = load i32, i32* @WD_BLIMIT, align 4
  %10 = load %struct.cpwd*, %struct.cpwd** %3, align 8
  %11 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WD_LIMIT, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @cpwd_writew(i32 %9, i64 %19)
  ret void
}

declare dso_local i32 @cpwd_toggleintr(%struct.cpwd*, i32, i32) #1

declare dso_local i32 @cpwd_writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
