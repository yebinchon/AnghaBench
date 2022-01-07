; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_rx.c_carlu_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_rx.c_carlu_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i64 }
%struct.frame = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @carlu_rx(%struct.carlu* %0, %struct.frame* %1) #0 {
  %3 = alloca %struct.carlu*, align 8
  %4 = alloca %struct.frame*, align 8
  store %struct.carlu* %0, %struct.carlu** %3, align 8
  store %struct.frame* %1, %struct.frame** %4, align 8
  %5 = load %struct.carlu*, %struct.carlu** %3, align 8
  %6 = getelementptr inbounds %struct.carlu, %struct.carlu* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.carlu*, %struct.carlu** %3, align 8
  %11 = load %struct.frame*, %struct.frame** %4, align 8
  %12 = call i32 @carlu_rx_stream(%struct.carlu* %10, %struct.frame* %11)
  br label %22

13:                                               ; preds = %2
  %14 = load %struct.carlu*, %struct.carlu** %3, align 8
  %15 = load %struct.frame*, %struct.frame** %4, align 8
  %16 = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.frame*, %struct.frame** %4, align 8
  %19 = getelementptr inbounds %struct.frame, %struct.frame* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__carlu_rx(%struct.carlu* %14, i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %13, %9
  ret void
}

declare dso_local i32 @carlu_rx_stream(%struct.carlu*, %struct.frame*) #1

declare dso_local i32 @__carlu_rx(%struct.carlu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
