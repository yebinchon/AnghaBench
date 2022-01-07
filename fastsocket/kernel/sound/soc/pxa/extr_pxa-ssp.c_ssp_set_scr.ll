; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa-ssp.c_ssp_set_scr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa-ssp.c_ssp_set_scr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_device = type { i64 }

@SSCR0 = common dso_local global i32 0, align 4
@PXA25x_SSP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssp_device*, i32)* @ssp_set_scr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssp_set_scr(%struct.ssp_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ssp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ssp_device* %0, %struct.ssp_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ssp_device*, %struct.ssp_device** %3, align 8
  %7 = load i32, i32* @SSCR0, align 4
  %8 = call i32 @ssp_read_reg(%struct.ssp_device* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = call i64 (...) @cpu_is_pxa25x()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.ssp_device*, %struct.ssp_device** %3, align 8
  %13 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PXA25x_SSP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, -65281
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %20, 2
  %22 = sdiv i32 %21, 2
  %23 = shl i32 %22, 8
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %34

26:                                               ; preds = %11, %2
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, -1048321
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 1
  %31 = shl i32 %30, 8
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %26, %17
  %35 = load %struct.ssp_device*, %struct.ssp_device** %3, align 8
  %36 = load i32, i32* @SSCR0, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ssp_write_reg(%struct.ssp_device* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i64 @cpu_is_pxa25x(...) #1

declare dso_local i32 @ssp_write_reg(%struct.ssp_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
