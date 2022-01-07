; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_omap_w1_search_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_omap_w1_search_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_master = type { i32 }
%struct.w1_master.0 = type opaque

@w1_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.w1_master*, i32, i32 (%struct.w1_master.0*, i32)*)* @omap_w1_search_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_w1_search_bus(i8* %0, %struct.w1_master* %1, i32 %2, i32 (%struct.w1_master.0*, i32)* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.w1_master*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.w1_master.0*, i32)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.w1_master* %1, %struct.w1_master** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 (%struct.w1_master.0*, i32)* %3, i32 (%struct.w1_master.0*, i32)** %8, align 8
  %13 = load i32, i32* @w1_id, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @w1_id, align 4
  store i32 %16, i32* %9, align 4
  br label %18

17:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %18

18:                                               ; preds = %17, %15
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @cpu_to_le64(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = call i32 @w1_calc_crc8(i32* %10, i32 7)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = shl i32 %22, 56
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %12, align 4
  %26 = load i32 (%struct.w1_master.0*, i32)*, i32 (%struct.w1_master.0*, i32)** %8, align 8
  %27 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  %28 = bitcast %struct.w1_master* %27 to %struct.w1_master.0*
  %29 = load i32, i32* %12, align 4
  %30 = call i32 %26(%struct.w1_master.0* %28, i32 %29)
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @w1_calc_crc8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
