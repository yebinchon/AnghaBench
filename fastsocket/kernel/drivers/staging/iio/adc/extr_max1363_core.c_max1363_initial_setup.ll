; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/adc/extr_max1363_core.c_max1363_initial_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/adc/extr_max1363_core.c_max1363_initial_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max1363_state = type { i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64 }

@MAX1363_SETUP_AIN3_IS_AIN3_REF_IS_VDD = common dso_local global i32 0, align 4
@MAX1363_SETUP_POWER_UP_INT_REF = common dso_local global i32 0, align 4
@MAX1363_SETUP_INT_CLOCK = common dso_local global i32 0, align 4
@MAX1363_SETUP_UNIPOLAR = common dso_local global i32 0, align 4
@MAX1363_SETUP_NORESET = common dso_local global i32 0, align 4
@max1363_mode_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max1363_state*)* @max1363_initial_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1363_initial_setup(%struct.max1363_state* %0) #0 {
  %2 = alloca %struct.max1363_state*, align 8
  store %struct.max1363_state* %0, %struct.max1363_state** %2, align 8
  %3 = load i32, i32* @MAX1363_SETUP_AIN3_IS_AIN3_REF_IS_VDD, align 4
  %4 = load i32, i32* @MAX1363_SETUP_POWER_UP_INT_REF, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @MAX1363_SETUP_INT_CLOCK, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MAX1363_SETUP_UNIPOLAR, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MAX1363_SETUP_NORESET, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %13 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %15 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @MAX1363_SETUP_BYTE(i32 %16)
  %18 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %19 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32*, i32** @max1363_mode_table, align 8
  %21 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %22 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  %27 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %28 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %27, i32 0, i32 3
  store i32* %26, i32** %28, align 8
  %29 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %30 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MAX1363_CONFIG_BYTE(i32 %31)
  %33 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %34 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %36 = call i32 @max1363_set_scan_mode(%struct.max1363_state* %35)
  ret i32 %36
}

declare dso_local i32 @MAX1363_SETUP_BYTE(i32) #1

declare dso_local i32 @MAX1363_CONFIG_BYTE(i32) #1

declare dso_local i32 @max1363_set_scan_mode(%struct.max1363_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
