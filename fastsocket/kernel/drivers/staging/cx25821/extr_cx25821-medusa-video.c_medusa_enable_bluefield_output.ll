; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-medusa-video.c_medusa_enable_bluefield_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-medusa-video.c_medusa_enable_bluefield_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32* }

@OUT_CTRL1 = common dso_local global i32 0, align 4
@OUT_CTRL_NS = common dso_local global i32 0, align 4
@VDEC_B_OUT_CTRL1 = common dso_local global i32 0, align 4
@VDEC_B_OUT_CTRL_NS = common dso_local global i32 0, align 4
@VDEC_C_OUT_CTRL1 = common dso_local global i32 0, align 4
@VDEC_C_OUT_CTRL_NS = common dso_local global i32 0, align 4
@VDEC_D_OUT_CTRL1 = common dso_local global i32 0, align 4
@VDEC_D_OUT_CTRL_NS = common dso_local global i32 0, align 4
@VDEC_E_OUT_CTRL1 = common dso_local global i32 0, align 4
@VDEC_E_OUT_CTRL_NS = common dso_local global i32 0, align 4
@VDEC_F_OUT_CTRL1 = common dso_local global i32 0, align 4
@VDEC_F_OUT_CTRL_NS = common dso_local global i32 0, align 4
@VDEC_G_OUT_CTRL1 = common dso_local global i32 0, align 4
@VDEC_G_OUT_CTRL_NS = common dso_local global i32 0, align 4
@VDEC_H_OUT_CTRL1 = common dso_local global i32 0, align 4
@VDEC_H_OUT_CTRL_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx25821_dev*, i32, i32)* @medusa_enable_bluefield_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @medusa_enable_bluefield_output(%struct.cx25821_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cx25821_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @OUT_CTRL1, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @OUT_CTRL_NS, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %15 [
    i32 135, label %16
    i32 134, label %17
    i32 133, label %20
    i32 132, label %23
    i32 131, label %26
    i32 130, label %29
    i32 129, label %32
    i32 128, label %35
  ]

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %3, %15
  br label %38

17:                                               ; preds = %3
  %18 = load i32, i32* @VDEC_B_OUT_CTRL1, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @VDEC_B_OUT_CTRL_NS, align 4
  store i32 %19, i32* %11, align 4
  br label %38

20:                                               ; preds = %3
  %21 = load i32, i32* @VDEC_C_OUT_CTRL1, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @VDEC_C_OUT_CTRL_NS, align 4
  store i32 %22, i32* %11, align 4
  br label %38

23:                                               ; preds = %3
  %24 = load i32, i32* @VDEC_D_OUT_CTRL1, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @VDEC_D_OUT_CTRL_NS, align 4
  store i32 %25, i32* %11, align 4
  br label %38

26:                                               ; preds = %3
  %27 = load i32, i32* @VDEC_E_OUT_CTRL1, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @VDEC_E_OUT_CTRL_NS, align 4
  store i32 %28, i32* %11, align 4
  br label %81

29:                                               ; preds = %3
  %30 = load i32, i32* @VDEC_F_OUT_CTRL1, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* @VDEC_F_OUT_CTRL_NS, align 4
  store i32 %31, i32* %11, align 4
  br label %81

32:                                               ; preds = %3
  %33 = load i32, i32* @VDEC_G_OUT_CTRL1, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* @VDEC_G_OUT_CTRL_NS, align 4
  store i32 %34, i32* %11, align 4
  br label %81

35:                                               ; preds = %3
  %36 = load i32, i32* @VDEC_H_OUT_CTRL1, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @VDEC_H_OUT_CTRL_NS, align 4
  store i32 %37, i32* %11, align 4
  br label %81

38:                                               ; preds = %23, %20, %17, %16
  %39 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %40 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @cx25821_i2c_read(i32* %42, i32 %43, i32* %9)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, -129
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, 128
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %38
  %53 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %54 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @cx25821_i2c_write(i32* %56, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %61 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @cx25821_i2c_read(i32* %63, i32 %64, i32* %9)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, -129
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %52
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, 128
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %52
  %74 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %75 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @cx25821_i2c_write(i32* %77, i32 %78, i32 %79)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %73, %35, %32, %29, %26
  ret void
}

declare dso_local i32 @cx25821_i2c_read(i32*, i32, i32*) #1

declare dso_local i32 @cx25821_i2c_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
