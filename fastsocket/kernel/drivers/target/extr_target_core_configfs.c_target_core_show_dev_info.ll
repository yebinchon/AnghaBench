; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_show_dev_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_show_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.se_subsystem_api* }
%struct.se_subsystem_api = type { i32 (%struct.se_device.0*, i8*)* }
%struct.se_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @target_core_show_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_core_show_dev_info(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca %struct.se_subsystem_api*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.se_device*
  store %struct.se_device* %10, %struct.se_device** %5, align 8
  %11 = load %struct.se_device*, %struct.se_device** %5, align 8
  %12 = getelementptr inbounds %struct.se_device, %struct.se_device* %11, i32 0, i32 0
  %13 = load %struct.se_subsystem_api*, %struct.se_subsystem_api** %12, align 8
  store %struct.se_subsystem_api* %13, %struct.se_subsystem_api** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.se_device*, %struct.se_device** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @transport_dump_dev_state(%struct.se_device* %14, i8* %15, i32* %7)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %8, align 4
  %20 = load %struct.se_subsystem_api*, %struct.se_subsystem_api** %6, align 8
  %21 = getelementptr inbounds %struct.se_subsystem_api, %struct.se_subsystem_api* %20, i32 0, i32 0
  %22 = load i32 (%struct.se_device.0*, i8*)*, i32 (%struct.se_device.0*, i8*)** %21, align 8
  %23 = load %struct.se_device*, %struct.se_device** %5, align 8
  %24 = bitcast %struct.se_device* %23 to %struct.se_device.0*
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = call i32 %22(%struct.se_device.0* %24, i8* %28)
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local i32 @transport_dump_dev_state(%struct.se_device*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
