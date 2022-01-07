; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_read_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_read_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { %struct.sca3000_state* }
%struct.sca3000_state = type { i32, i32 }

@SCA3000_REG_CTRL_SEL_OUT_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @sca3000_read_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_read_frequency(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.sca3000_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %14)
  store %struct.iio_dev* %15, %struct.iio_dev** %8, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 0
  %18 = load %struct.sca3000_state*, %struct.sca3000_state** %17, align 8
  store %struct.sca3000_state* %18, %struct.sca3000_state** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %20 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %23 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %24 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__sca3000_get_base_freq(%struct.sca3000_state* %22, i32 %25, i32* %12)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %67

30:                                               ; preds = %3
  %31 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %32 = load i32, i32* @SCA3000_REG_CTRL_SEL_OUT_CTRL, align 4
  %33 = call i32 @sca3000_read_ctrl_reg(%struct.sca3000_state* %31, i32 %32, i32** %13)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %35 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %71

40:                                               ; preds = %30
  %41 = load i32, i32* %12, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load i32*, i32** %13, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 3
  switch i32 %47, label %62 [
    i32 0, label %48
    i32 3, label %48
    i32 1, label %52
    i32 2, label %57
  ]

48:                                               ; preds = %43, %43
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i32 %51, i32* %11, align 4
  br label %62

52:                                               ; preds = %43
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sdiv i32 %54, 2
  %56 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 %56, i32* %11, align 4
  br label %62

57:                                               ; preds = %43
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sdiv i32 %59, 4
  %61 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %60)
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %43, %57, %52, %48
  br label %63

63:                                               ; preds = %62, %40
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @kfree(i32* %64)
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %73

67:                                               ; preds = %29
  %68 = load %struct.sca3000_state*, %struct.sca3000_state** %9, align 8
  %69 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  br label %71

71:                                               ; preds = %67, %39
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %63
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__sca3000_get_base_freq(%struct.sca3000_state*, i32, i32*) #1

declare dso_local i32 @sca3000_read_ctrl_reg(%struct.sca3000_state*, i32, i32**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
