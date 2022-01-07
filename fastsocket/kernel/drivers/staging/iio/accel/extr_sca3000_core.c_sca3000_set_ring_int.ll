; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_set_ring_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_set_ring_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { %struct.sca3000_state* }
%struct.sca3000_state = type { i32 }
%struct.iio_event_attr = type { i32 }

@SCA3000_REG_ADDR_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sca3000_set_ring_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_set_ring_int(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.sca3000_state*, align 8
  %11 = alloca %struct.iio_event_attr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
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
  %20 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %21 = call %struct.iio_event_attr* @to_iio_event_attr(%struct.device_attribute* %20)
  store %struct.iio_event_attr* %21, %struct.iio_event_attr** %11, align 8
  %22 = load %struct.sca3000_state*, %struct.sca3000_state** %10, align 8
  %23 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strict_strtol(i8* %25, i32 10, i64* %12)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %66

30:                                               ; preds = %4
  %31 = load %struct.sca3000_state*, %struct.sca3000_state** %10, align 8
  %32 = load i32, i32* @SCA3000_REG_ADDR_INT_MASK, align 4
  %33 = call i32 @sca3000_read_data(%struct.sca3000_state* %31, i32 %32, i32** %14, i32 1)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %66

37:                                               ; preds = %30
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.sca3000_state*, %struct.sca3000_state** %10, align 8
  %42 = load i32, i32* @SCA3000_REG_ADDR_INT_MASK, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iio_event_attr*, %struct.iio_event_attr** %11, align 8
  %47 = getelementptr inbounds %struct.iio_event_attr, %struct.iio_event_attr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %45, %48
  %50 = call i32 @sca3000_write_reg(%struct.sca3000_state* %41, i32 %42, i32 %49)
  store i32 %50, i32* %13, align 4
  br label %63

51:                                               ; preds = %37
  %52 = load %struct.sca3000_state*, %struct.sca3000_state** %10, align 8
  %53 = load i32, i32* @SCA3000_REG_ADDR_INT_MASK, align 4
  %54 = load i32*, i32** %14, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.iio_event_attr*, %struct.iio_event_attr** %11, align 8
  %58 = getelementptr inbounds %struct.iio_event_attr, %struct.iio_event_attr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %56, %60
  %62 = call i32 @sca3000_write_reg(%struct.sca3000_state* %52, i32 %53, i32 %61)
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %51, %40
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @kfree(i32* %64)
  br label %66

66:                                               ; preds = %63, %36, %29
  %67 = load %struct.sca3000_state*, %struct.sca3000_state** %10, align 8
  %68 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  br label %77

75:                                               ; preds = %66
  %76 = load i64, i64* %8, align 8
  br label %77

77:                                               ; preds = %75, %72
  %78 = phi i64 [ %74, %72 ], [ %76, %75 ]
  %79 = trunc i64 %78 to i32
  ret i32 %79
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.iio_event_attr* @to_iio_event_attr(%struct.device_attribute*) #1

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
