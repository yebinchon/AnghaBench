; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_tx.c_carlu_tx_fb_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_tx.c_carlu_tx_fb_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32 (%struct.carlu*, %struct.frame*)* }
%struct.frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carlu*, %struct.frame*)* @carlu_tx_fb_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carlu_tx_fb_cb(%struct.carlu* %0, %struct.frame* %1) #0 {
  %3 = alloca %struct.carlu*, align 8
  %4 = alloca %struct.frame*, align 8
  store %struct.carlu* %0, %struct.carlu** %3, align 8
  store %struct.frame* %1, %struct.frame** %4, align 8
  %5 = load %struct.carlu*, %struct.carlu** %3, align 8
  %6 = getelementptr inbounds %struct.carlu, %struct.carlu* %5, i32 0, i32 0
  %7 = load i32 (%struct.carlu*, %struct.frame*)*, i32 (%struct.carlu*, %struct.frame*)** %6, align 8
  %8 = icmp ne i32 (%struct.carlu*, %struct.frame*)* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.carlu*, %struct.carlu** %3, align 8
  %11 = getelementptr inbounds %struct.carlu, %struct.carlu* %10, i32 0, i32 0
  %12 = load i32 (%struct.carlu*, %struct.frame*)*, i32 (%struct.carlu*, %struct.frame*)** %11, align 8
  %13 = load %struct.carlu*, %struct.carlu** %3, align 8
  %14 = load %struct.frame*, %struct.frame** %4, align 8
  %15 = call i32 %12(%struct.carlu* %13, %struct.frame* %14)
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.carlu*, %struct.carlu** %3, align 8
  %18 = load %struct.frame*, %struct.frame** %4, align 8
  %19 = call i32 @carlu_free_frame(%struct.carlu* %17, %struct.frame* %18)
  br label %20

20:                                               ; preds = %16, %9
  ret void
}

declare dso_local i32 @carlu_free_frame(%struct.carlu*, %struct.frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
