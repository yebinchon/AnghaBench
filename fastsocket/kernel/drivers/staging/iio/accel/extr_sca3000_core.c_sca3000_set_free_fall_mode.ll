; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_set_free_fall_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_set_free_fall_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { %struct.sca3000_state* }
%struct.sca3000_state = type { i32 }

@SCA3000_FREE_FALL_DETECT = common dso_local global i32 0, align 4
@SCA3000_REG_ADDR_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sca3000_set_free_fall_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_set_free_fall_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.sca3000_state*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %15)
  store %struct.iio_dev* %16, %struct.iio_dev** %9, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %18 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %17, i32 0, i32 0
  %19 = load %struct.sca3000_state*, %struct.sca3000_state** %18, align 8
  store %struct.sca3000_state* %19, %struct.sca3000_state** %10, align 8
  %20 = load i32, i32* @SCA3000_FREE_FALL_DETECT, align 4
  store i32 %20, i32* %14, align 4
  %21 = load %struct.sca3000_state*, %struct.sca3000_state** %10, align 8
  %22 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @strict_strtol(i8* %24, i32 10, i64* %11)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %79

29:                                               ; preds = %4
  %30 = load %struct.sca3000_state*, %struct.sca3000_state** %10, align 8
  %31 = load i32, i32* @SCA3000_REG_ADDR_MODE, align 4
  %32 = call i32 @sca3000_read_data(%struct.sca3000_state* %30, i32 %31, i32** %13, i32 1)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %79

36:                                               ; preds = %29
  %37 = load i64, i64* %11, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load i32*, i32** %13, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %14, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %39
  %47 = load %struct.sca3000_state*, %struct.sca3000_state** %10, align 8
  %48 = load i32, i32* @SCA3000_REG_ADDR_MODE, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SCA3000_FREE_FALL_DETECT, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @sca3000_write_reg(%struct.sca3000_state* %47, i32 %48, i32 %53)
  store i32 %54, i32* %12, align 4
  br label %76

55:                                               ; preds = %39, %36
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %55
  %59 = load i32*, i32** %13, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %14, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %58
  %66 = load %struct.sca3000_state*, %struct.sca3000_state** %10, align 8
  %67 = load i32, i32* @SCA3000_REG_ADDR_MODE, align 4
  %68 = load i32*, i32** %13, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %14, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = call i32 @sca3000_write_reg(%struct.sca3000_state* %66, i32 %67, i32 %73)
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %65, %58, %55
  br label %76

76:                                               ; preds = %75, %46
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @kfree(i32* %77)
  br label %79

79:                                               ; preds = %76, %35, %28
  %80 = load %struct.sca3000_state*, %struct.sca3000_state** %10, align 8
  %81 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  br label %90

88:                                               ; preds = %79
  %89 = load i64, i64* %8, align 8
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi i64 [ %87, %85 ], [ %89, %88 ]
  %92 = trunc i64 %91 to i32
  ret i32 %92
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @sca3000_read_data(%struct.sca3000_state*, i32, i32**, i32) #1

declare dso_local i32 @sca3000_write_reg(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
