; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_io7x.c_msm_camio_clk_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_io7x.c_msm_camio_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"vfe_mdc_clk\00", align 1
@camio_vfe_mdc_clk = common dso_local global %struct.clk* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"mdc_clk\00", align 1
@camio_mdc_clk = common dso_local global %struct.clk* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"vfe_clk\00", align 1
@camio_vfe_clk = common dso_local global %struct.clk* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_camio_clk_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %3, align 4
  store %struct.clk* null, %struct.clk** %4, align 8
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %15 [
    i32 128, label %6
    i32 130, label %9
    i32 129, label %12
  ]

6:                                                ; preds = %1
  %7 = call i8* @clk_get(i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %8 = bitcast i8* %7 to %struct.clk*
  store %struct.clk* %8, %struct.clk** @camio_vfe_mdc_clk, align 8
  store %struct.clk* %8, %struct.clk** %4, align 8
  br label %16

9:                                                ; preds = %1
  %10 = call i8* @clk_get(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %11 = bitcast i8* %10 to %struct.clk*
  store %struct.clk* %11, %struct.clk** @camio_mdc_clk, align 8
  store %struct.clk* %11, %struct.clk** %4, align 8
  br label %16

12:                                               ; preds = %1
  %13 = call i8* @clk_get(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %14 = bitcast i8* %13 to %struct.clk*
  store %struct.clk* %14, %struct.clk** @camio_vfe_clk, align 8
  store %struct.clk* %14, %struct.clk** %4, align 8
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %12, %9, %6
  %17 = load %struct.clk*, %struct.clk** %4, align 8
  %18 = call i32 @IS_ERR(%struct.clk* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load %struct.clk*, %struct.clk** %4, align 8
  %22 = call i32 @clk_enable(%struct.clk* %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i8* @clk_get(i32*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_enable(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
