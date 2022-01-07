; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_chan_wait_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_chan_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aaci_runtime = type { i64 }

@AACI_SR = common dso_local global i64 0, align 8
@SR_TXB = common dso_local global i32 0, align 4
@SR_RXB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aaci_runtime*)* @aaci_chan_wait_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aaci_chan_wait_ready(%struct.aaci_runtime* %0) #0 {
  %2 = alloca %struct.aaci_runtime*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.aaci_runtime* %0, %struct.aaci_runtime** %2, align 8
  store i32 5000, i32* %4, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load %struct.aaci_runtime*, %struct.aaci_runtime** %2, align 8
  %7 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AACI_SR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %5
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SR_TXB, align 4
  %15 = load i32, i32* @SR_RXB, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %4, align 4
  %22 = icmp ne i32 %20, 0
  br label %23

23:                                               ; preds = %19, %12
  %24 = phi i1 [ false, %12 ], [ %22, %19 ]
  br i1 %24, label %5, label %25

25:                                               ; preds = %23
  ret void
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
