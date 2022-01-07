; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_set_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_set_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { %struct.sca3000_state* }
%struct.sca3000_state = type { i32, i32 }

@SCA3000_REG_CTRL_SEL_OUT_CTRL = common dso_local global i32 0, align 4
@SCA3000_OUT_CTRL_BUF_DIV_2 = common dso_local global i32 0, align 4
@SCA3000_OUT_CTRL_BUF_DIV_4 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sca3000_set_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_set_frequency(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.sca3000_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %16)
  store %struct.iio_dev* %17, %struct.iio_dev** %10, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %19 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %18, i32 0, i32 0
  %20 = load %struct.sca3000_state*, %struct.sca3000_state** %19, align 8
  store %struct.sca3000_state* %20, %struct.sca3000_state** %11, align 8
  store i32 0, i32* %13, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @strict_strtol(i8* %21, i32 10, i64* %15)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %105

27:                                               ; preds = %4
  %28 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %29 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %32 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %33 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @__sca3000_get_base_freq(%struct.sca3000_state* %31, i32 %34, i32* %13)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %91

39:                                               ; preds = %27
  %40 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %41 = load i32, i32* @SCA3000_REG_CTRL_SEL_OUT_CTRL, align 4
  %42 = call i32 @sca3000_read_ctrl_reg(%struct.sca3000_state* %40, i32 %41, i32** %14)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %91

46:                                               ; preds = %39
  %47 = load i32*, i32** %14, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, -4
  store i32 %50, i32* %48, align 4
  %51 = load i64, i64* %15, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sdiv i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %46
  %57 = load i32, i32* @SCA3000_OUT_CTRL_BUF_DIV_2, align 4
  %58 = load i32*, i32** %14, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %84

62:                                               ; preds = %46
  %63 = load i64, i64* %15, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sdiv i32 %64, 4
  %66 = sext i32 %65 to i64
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i32, i32* @SCA3000_OUT_CTRL_BUF_DIV_4, align 4
  %70 = load i32*, i32** %14, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %83

74:                                               ; preds = %62
  %75 = load i64, i64* %15, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp ne i64 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %12, align 4
  br label %91

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %68
  br label %84

84:                                               ; preds = %83, %56
  %85 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %86 = load i32, i32* @SCA3000_REG_CTRL_SEL_OUT_CTRL, align 4
  %87 = load i32*, i32** %14, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @sca3000_write_ctrl_reg(%struct.sca3000_state* %85, i32 %86, i32 %89)
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %84, %79, %45, %38
  %92 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %93 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  br label %102

100:                                              ; preds = %91
  %101 = load i64, i64* %9, align 8
  br label %102

102:                                              ; preds = %100, %97
  %103 = phi i64 [ %99, %97 ], [ %101, %100 ]
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %102, %25
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__sca3000_get_base_freq(%struct.sca3000_state*, i32, i32*) #1

declare dso_local i32 @sca3000_read_ctrl_reg(%struct.sca3000_state*, i32, i32**) #1

declare dso_local i32 @sca3000_write_ctrl_reg(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
