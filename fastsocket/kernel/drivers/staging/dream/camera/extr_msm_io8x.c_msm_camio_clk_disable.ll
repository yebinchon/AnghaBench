; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_io8x.c_msm_camio_clk_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_io8x.c_msm_camio_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@camio_vfe_mdc_clk = common dso_local global %struct.clk* null, align 8
@camio_mdc_clk = common dso_local global %struct.clk* null, align 8
@camio_vfe_clk = common dso_local global %struct.clk* null, align 8
@camio_vfe_axi_clk = common dso_local global %struct.clk* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_camio_clk_disable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store %struct.clk* null, %struct.clk** %4, align 8
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %14 [
    i32 128, label %6
    i32 131, label %8
    i32 129, label %10
    i32 130, label %12
  ]

6:                                                ; preds = %1
  %7 = load %struct.clk*, %struct.clk** @camio_vfe_mdc_clk, align 8
  store %struct.clk* %7, %struct.clk** %4, align 8
  br label %15

8:                                                ; preds = %1
  %9 = load %struct.clk*, %struct.clk** @camio_mdc_clk, align 8
  store %struct.clk* %9, %struct.clk** %4, align 8
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.clk*, %struct.clk** @camio_vfe_clk, align 8
  store %struct.clk* %11, %struct.clk** %4, align 8
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.clk*, %struct.clk** @camio_vfe_axi_clk, align 8
  store %struct.clk* %13, %struct.clk** %4, align 8
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %12, %10, %8, %6
  %16 = load %struct.clk*, %struct.clk** %4, align 8
  %17 = call i32 @IS_ERR(%struct.clk* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.clk*, %struct.clk** %4, align 8
  %21 = call i32 @clk_disable(%struct.clk* %20)
  %22 = load %struct.clk*, %struct.clk** %4, align 8
  %23 = call i32 @clk_put(%struct.clk* %22)
  br label %25

24:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_disable(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
