; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/zorro/extr_zorro-driver.c_zorro_bus_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/zorro/extr_zorro-driver.c_zorro_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.zorro_dev = type { i64 }
%struct.zorro_driver = type { %struct.zorro_device_id* }
%struct.zorro_device_id = type { i64 }

@ZORRO_WILDCARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @zorro_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zorro_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.zorro_dev*, align 8
  %7 = alloca %struct.zorro_driver*, align 8
  %8 = alloca %struct.zorro_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.zorro_dev* @to_zorro_dev(%struct.device* %9)
  store %struct.zorro_dev* %10, %struct.zorro_dev** %6, align 8
  %11 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %12 = call %struct.zorro_driver* @to_zorro_driver(%struct.device_driver* %11)
  store %struct.zorro_driver* %12, %struct.zorro_driver** %7, align 8
  %13 = load %struct.zorro_driver*, %struct.zorro_driver** %7, align 8
  %14 = getelementptr inbounds %struct.zorro_driver, %struct.zorro_driver* %13, i32 0, i32 0
  %15 = load %struct.zorro_device_id*, %struct.zorro_device_id** %14, align 8
  store %struct.zorro_device_id* %15, %struct.zorro_device_id** %8, align 8
  %16 = load %struct.zorro_device_id*, %struct.zorro_device_id** %8, align 8
  %17 = icmp ne %struct.zorro_device_id* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %40, %19
  %21 = load %struct.zorro_device_id*, %struct.zorro_device_id** %8, align 8
  %22 = getelementptr inbounds %struct.zorro_device_id, %struct.zorro_device_id* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.zorro_device_id*, %struct.zorro_device_id** %8, align 8
  %27 = getelementptr inbounds %struct.zorro_device_id, %struct.zorro_device_id* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ZORRO_WILDCARD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = load %struct.zorro_device_id*, %struct.zorro_device_id** %8, align 8
  %33 = getelementptr inbounds %struct.zorro_device_id, %struct.zorro_device_id* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.zorro_dev*, %struct.zorro_dev** %6, align 8
  %36 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31, %25
  store i32 1, i32* %3, align 4
  br label %44

40:                                               ; preds = %31
  %41 = load %struct.zorro_device_id*, %struct.zorro_device_id** %8, align 8
  %42 = getelementptr inbounds %struct.zorro_device_id, %struct.zorro_device_id* %41, i32 1
  store %struct.zorro_device_id* %42, %struct.zorro_device_id** %8, align 8
  br label %20

43:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %39, %18
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.zorro_dev* @to_zorro_dev(%struct.device*) #1

declare dso_local %struct.zorro_driver* @to_zorro_driver(%struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
