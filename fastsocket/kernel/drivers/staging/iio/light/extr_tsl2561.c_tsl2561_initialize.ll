; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/light/extr_tsl2561.c_tsl2561_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/light/extr_tsl2561.c_tsl2561_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsl2561_state = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@TSL2561_CONTROL_REGISTER = common dso_local global i32 0, align 4
@TSL2561_CONT_REG_PWR_ON = common dso_local global i32 0, align 4
@TSL2561_INT_CONTROL_REGISTER = common dso_local global i32 0, align 4
@TSL2561_INT_REG_INT_TEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsl2561_state*)* @tsl2561_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2561_initialize(%struct.tsl2561_state* %0) #0 {
  %2 = alloca %struct.tsl2561_state*, align 8
  %3 = alloca i32, align 4
  store %struct.tsl2561_state* %0, %struct.tsl2561_state** %2, align 8
  %4 = load %struct.tsl2561_state*, %struct.tsl2561_state** %2, align 8
  %5 = getelementptr inbounds %struct.tsl2561_state, %struct.tsl2561_state* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.tsl2561_state*, %struct.tsl2561_state** %2, align 8
  %8 = getelementptr inbounds %struct.tsl2561_state, %struct.tsl2561_state* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.tsl2561_state*, %struct.tsl2561_state** %2, align 8
  %12 = getelementptr inbounds %struct.tsl2561_state, %struct.tsl2561_state* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @TSL2561_CONTROL_REGISTER, align 4
  %16 = load %struct.tsl2561_state*, %struct.tsl2561_state** %2, align 8
  %17 = getelementptr inbounds %struct.tsl2561_state, %struct.tsl2561_state* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 8
  %20 = load %struct.tsl2561_state*, %struct.tsl2561_state** %2, align 8
  %21 = getelementptr inbounds %struct.tsl2561_state, %struct.tsl2561_state* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.tsl2561_state*, %struct.tsl2561_state** %2, align 8
  %24 = getelementptr inbounds %struct.tsl2561_state, %struct.tsl2561_state* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = bitcast %struct.TYPE_2__* %25 to i8*
  %27 = load i8, i8* %26, align 1
  %28 = load i32, i32* @TSL2561_CONT_REG_PWR_ON, align 4
  %29 = call i32 @i2c_smbus_write_byte_data(i32 %22, i8 signext %27, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %49

33:                                               ; preds = %1
  %34 = load i32, i32* @TSL2561_INT_CONTROL_REGISTER, align 4
  %35 = load %struct.tsl2561_state*, %struct.tsl2561_state** %2, align 8
  %36 = getelementptr inbounds %struct.tsl2561_state, %struct.tsl2561_state* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 8
  %39 = load %struct.tsl2561_state*, %struct.tsl2561_state** %2, align 8
  %40 = getelementptr inbounds %struct.tsl2561_state, %struct.tsl2561_state* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.tsl2561_state*, %struct.tsl2561_state** %2, align 8
  %43 = getelementptr inbounds %struct.tsl2561_state, %struct.tsl2561_state* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = bitcast %struct.TYPE_2__* %44 to i8*
  %46 = load i8, i8* %45, align 1
  %47 = load i32, i32* @TSL2561_INT_REG_INT_TEST, align 4
  %48 = call i32 @i2c_smbus_write_byte_data(i32 %41, i8 signext %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %33, %32
  %50 = load %struct.tsl2561_state*, %struct.tsl2561_state** %2, align 8
  %51 = getelementptr inbounds %struct.tsl2561_state, %struct.tsl2561_state* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i8 signext, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
