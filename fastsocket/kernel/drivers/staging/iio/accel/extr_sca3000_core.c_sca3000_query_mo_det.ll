; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_query_mo_det.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_query_mo_det.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { %struct.sca3000_state* }
%struct.sca3000_state = type { i32 }
%struct.iio_event_attr = type { i32 }

@SCA3000_REG_ADDR_MODE = common dso_local global i32 0, align 4
@SCA3000_MEAS_MODE_MOT_DET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@SCA3000_REG_CTRL_SEL_MD_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @sca3000_query_mo_det to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_query_mo_det(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.sca3000_state*, align 8
  %9 = alloca %struct.iio_event_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %14)
  store %struct.iio_dev* %15, %struct.iio_dev** %7, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 0
  %18 = load %struct.sca3000_state*, %struct.sca3000_state** %17, align 8
  store %struct.sca3000_state* %18, %struct.sca3000_state** %8, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %20 = call %struct.iio_event_attr* @to_iio_event_attr(%struct.device_attribute* %19)
  store %struct.iio_event_attr* %20, %struct.iio_event_attr** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 3, i32* %13, align 4
  %21 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %22 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %25 = load i32, i32* @SCA3000_REG_ADDR_MODE, align 4
  %26 = call i32 @sca3000_read_data(%struct.sca3000_state* %24, i32 %25, i32** %12, i32 1)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %80

30:                                               ; preds = %3
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %13, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @SCA3000_MEAS_MODE_MOT_DET, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = call i64 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %11, align 4
  br label %77

48:                                               ; preds = %30
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @kfree(i32* %49)
  %51 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %52 = load i32, i32* @SCA3000_REG_CTRL_SEL_MD_CTRL, align 4
  %53 = call i32 @sca3000_read_ctrl_reg(%struct.sca3000_state* %51, i32 %52, i32** %12)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %80

57:                                               ; preds = %48
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i32*, i32** %12, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iio_event_attr*, %struct.iio_event_attr** %9, align 8
  %66 = getelementptr inbounds %struct.iio_event_attr, %struct.iio_event_attr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  %72 = call i64 (i8*, i8*, ...) @sprintf(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %57, %38
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @kfree(i32* %78)
  br label %80

80:                                               ; preds = %77, %56, %29
  %81 = load %struct.sca3000_state*, %struct.sca3000_state** %8, align 8
  %82 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %10, align 4
  br label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %11, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  ret i32 %91
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.iio_event_attr* @to_iio_event_attr(%struct.device_attribute*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sca3000_read_data(%struct.sca3000_state*, i32, i32**, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @sca3000_read_ctrl_reg(%struct.sca3000_state*, i32, i32**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
