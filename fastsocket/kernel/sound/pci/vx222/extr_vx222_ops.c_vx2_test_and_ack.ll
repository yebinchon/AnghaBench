; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_vx2_test_and_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_vx2_test_and_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }

@VX_STAT_XILINX_LOADED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@VX_STATUS_MEMIRQ_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*)* @vx2_test_and_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx2_test_and_ack(%struct.vx_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vx_core*, align 8
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  %4 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %5 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @VX_STAT_XILINX_LOADED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %15 = load i32, i32* @STATUS, align 4
  %16 = call i32 @vx_inl(%struct.vx_core* %14, i32 %15)
  %17 = load i32, i32* @VX_STATUS_MEMIRQ_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %40

23:                                               ; preds = %13
  %24 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %25 = load i32, i32* @STATUS, align 4
  %26 = call i32 @vx_outl(%struct.vx_core* %24, i32 %25, i32 0)
  %27 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %28 = load i32, i32* @STATUS, align 4
  %29 = call i32 @vx_inl(%struct.vx_core* %27, i32 %28)
  %30 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %31 = load i32, i32* @STATUS, align 4
  %32 = load i32, i32* @VX_STATUS_MEMIRQ_MASK, align 4
  %33 = call i32 @vx_outl(%struct.vx_core* %30, i32 %31, i32 %32)
  %34 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %35 = load i32, i32* @STATUS, align 4
  %36 = call i32 @vx_inl(%struct.vx_core* %34, i32 %35)
  %37 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %38 = load i32, i32* @STATUS, align 4
  %39 = call i32 @vx_outl(%struct.vx_core* %37, i32 %38, i32 0)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %23, %20, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @vx_inl(%struct.vx_core*, i32) #1

declare dso_local i32 @vx_outl(%struct.vx_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
