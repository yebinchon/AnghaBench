; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_store_dev_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_store_dev_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.se_subsystem_api* }
%struct.se_subsystem_api = type { i32 (%struct.se_device.0*, i8*, i64)* }
%struct.se_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @target_core_store_dev_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_core_store_dev_control(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.se_device*, align 8
  %8 = alloca %struct.se_subsystem_api*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.se_device*
  store %struct.se_device* %10, %struct.se_device** %7, align 8
  %11 = load %struct.se_device*, %struct.se_device** %7, align 8
  %12 = getelementptr inbounds %struct.se_device, %struct.se_device* %11, i32 0, i32 0
  %13 = load %struct.se_subsystem_api*, %struct.se_subsystem_api** %12, align 8
  store %struct.se_subsystem_api* %13, %struct.se_subsystem_api** %8, align 8
  %14 = load %struct.se_subsystem_api*, %struct.se_subsystem_api** %8, align 8
  %15 = getelementptr inbounds %struct.se_subsystem_api, %struct.se_subsystem_api* %14, i32 0, i32 0
  %16 = load i32 (%struct.se_device.0*, i8*, i64)*, i32 (%struct.se_device.0*, i8*, i64)** %15, align 8
  %17 = load %struct.se_device*, %struct.se_device** %7, align 8
  %18 = bitcast %struct.se_device* %17 to %struct.se_device.0*
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 %16(%struct.se_device.0* %18, i8* %19, i64 %20)
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
