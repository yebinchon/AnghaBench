; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_ring.c_sca3000_store_ring_bpse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_ring.c_sca3000_store_ring_bpse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_ring_buffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sca3000_state* }
%struct.sca3000_state = type { i32, i32 }

@SCA3000_REG_ADDR_MODE = common dso_local global i32 0, align 4
@SCA3000_RING_BUF_8BIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sca3000_store_ring_bpse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_store_ring_bpse(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_ring_buffer*, align 8
  %11 = alloca %struct.sca3000_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.iio_ring_buffer* @dev_get_drvdata(%struct.device* %15)
  store %struct.iio_ring_buffer* %16, %struct.iio_ring_buffer** %10, align 8
  %17 = load %struct.iio_ring_buffer*, %struct.iio_ring_buffer** %10, align 8
  %18 = getelementptr inbounds %struct.iio_ring_buffer, %struct.iio_ring_buffer* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.sca3000_state*, %struct.sca3000_state** %20, align 8
  store %struct.sca3000_state* %21, %struct.sca3000_state** %11, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strict_strtol(i8* %22, i32 10, i64* %14)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %5, align 4
  br label %80

28:                                               ; preds = %4
  %29 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %30 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %33 = load i32, i32* @SCA3000_REG_ADDR_MODE, align 4
  %34 = call i32 @sca3000_read_data(%struct.sca3000_state* %32, i32 %33, i32** %13, i32 1)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %66, label %37

37:                                               ; preds = %28
  %38 = load i64, i64* %14, align 8
  switch i64 %38, label %62 [
    i64 8, label %39
    i64 11, label %50
  ]

39:                                               ; preds = %37
  %40 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %41 = load i32, i32* @SCA3000_REG_ADDR_MODE, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SCA3000_RING_BUF_8BIT, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @sca3000_write_reg(%struct.sca3000_state* %40, i32 %41, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %49 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %48, i32 0, i32 0
  store i32 8, i32* %49, align 4
  br label %65

50:                                               ; preds = %37
  %51 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %52 = load i32, i32* @SCA3000_REG_ADDR_MODE, align 4
  %53 = load i32*, i32** %13, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SCA3000_RING_BUF_8BIT, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = call i32 @sca3000_write_reg(%struct.sca3000_state* %51, i32 %52, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %61 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %60, i32 0, i32 0
  store i32 11, i32* %61, align 4
  br label %65

62:                                               ; preds = %37
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %62, %50, %39
  br label %66

66:                                               ; preds = %65, %28
  %67 = load %struct.sca3000_state*, %struct.sca3000_state** %11, align 8
  %68 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  br label %77

75:                                               ; preds = %66
  %76 = load i64, i64* %9, align 8
  br label %77

77:                                               ; preds = %75, %72
  %78 = phi i64 [ %74, %72 ], [ %76, %75 ]
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %26
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.iio_ring_buffer* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sca3000_read_data(%struct.sca3000_state*, i32, i32**, i32) #1

declare dso_local i32 @sca3000_write_reg(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
