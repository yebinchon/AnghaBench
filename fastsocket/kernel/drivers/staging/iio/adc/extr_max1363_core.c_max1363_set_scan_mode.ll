; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/adc/extr_max1363_core.c_max1363_set_scan_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/adc/extr_max1363_core.c_max1363_set_scan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max1363_state = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX1363_CHANNEL_SEL_MASK = common dso_local global i32 0, align 4
@MAX1363_SCAN_MASK = common dso_local global i32 0, align 4
@MAX1363_SE_DE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max1363_state*)* @max1363_set_scan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1363_set_scan_mode(%struct.max1363_state* %0) #0 {
  %2 = alloca %struct.max1363_state*, align 8
  store %struct.max1363_state* %0, %struct.max1363_state** %2, align 8
  %3 = load i32, i32* @MAX1363_CHANNEL_SEL_MASK, align 4
  %4 = load i32, i32* @MAX1363_SCAN_MASK, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @MAX1363_SE_DE_MASK, align 4
  %7 = or i32 %5, %6
  %8 = xor i32 %7, -1
  %9 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %10 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %14 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %19 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %23 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %26 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %29 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @max1363_write_basic_config(i32 %24, i32 %27, i32 %30)
  ret i32 %31
}

declare dso_local i32 @max1363_write_basic_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
