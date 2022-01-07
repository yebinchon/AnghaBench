; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-dev.c_uwb_dev_LQE_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_lc-dev.c_uwb_dev_LQE_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.uwb_dev = type { %struct.uwb_beca_e* }
%struct.uwb_beca_e = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @uwb_dev_LQE_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_dev_LQE_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.uwb_dev*, align 8
  %10 = alloca %struct.uwb_beca_e*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.uwb_dev* @to_uwb_dev(%struct.device* %12)
  store %struct.uwb_dev* %13, %struct.uwb_dev** %9, align 8
  %14 = load %struct.uwb_dev*, %struct.uwb_dev** %9, align 8
  %15 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %14, i32 0, i32 0
  %16 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %15, align 8
  store %struct.uwb_beca_e* %16, %struct.uwb_beca_e** %10, align 8
  %17 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %10, align 8
  %18 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.uwb_dev*, %struct.uwb_dev** %9, align 8
  %21 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %20, i32 0, i32 0
  %22 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %21, align 8
  %23 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %22, i32 0, i32 1
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @stats_store(i32* %23, i8* %24, i64 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %10, align 8
  %28 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %11, align 4
  ret i32 %30
}

declare dso_local %struct.uwb_dev* @to_uwb_dev(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stats_store(i32*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
