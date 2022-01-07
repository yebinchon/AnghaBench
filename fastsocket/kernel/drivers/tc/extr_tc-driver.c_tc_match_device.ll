; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/tc/extr_tc-driver.c_tc_match_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/tc/extr_tc-driver.c_tc_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_device_id = type { i64*, i64* }
%struct.tc_driver = type { %struct.tc_device_id* }
%struct.tc_dev = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tc_device_id* @tc_match_device(%struct.tc_driver* %0, %struct.tc_dev* %1) #0 {
  %3 = alloca %struct.tc_device_id*, align 8
  %4 = alloca %struct.tc_driver*, align 8
  %5 = alloca %struct.tc_dev*, align 8
  %6 = alloca %struct.tc_device_id*, align 8
  store %struct.tc_driver* %0, %struct.tc_driver** %4, align 8
  store %struct.tc_dev* %1, %struct.tc_dev** %5, align 8
  %7 = load %struct.tc_driver*, %struct.tc_driver** %4, align 8
  %8 = getelementptr inbounds %struct.tc_driver, %struct.tc_driver* %7, i32 0, i32 0
  %9 = load %struct.tc_device_id*, %struct.tc_device_id** %8, align 8
  store %struct.tc_device_id* %9, %struct.tc_device_id** %6, align 8
  %10 = load %struct.tc_device_id*, %struct.tc_device_id** %6, align 8
  %11 = icmp ne %struct.tc_device_id* %10, null
  br i1 %11, label %12, label %53

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %49, %12
  %14 = load %struct.tc_device_id*, %struct.tc_device_id** %6, align 8
  %15 = getelementptr inbounds %struct.tc_device_id, %struct.tc_device_id* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load %struct.tc_device_id*, %struct.tc_device_id** %6, align 8
  %22 = getelementptr inbounds %struct.tc_device_id, %struct.tc_device_id* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %20, %13
  %28 = phi i1 [ true, %13 ], [ %26, %20 ]
  br i1 %28, label %29, label %52

29:                                               ; preds = %27
  %30 = load %struct.tc_dev*, %struct.tc_dev** %5, align 8
  %31 = getelementptr inbounds %struct.tc_dev, %struct.tc_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tc_device_id*, %struct.tc_device_id** %6, align 8
  %34 = getelementptr inbounds %struct.tc_device_id, %struct.tc_device_id* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = call i64 @strcmp(i32 %32, i64* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %29
  %39 = load %struct.tc_dev*, %struct.tc_dev** %5, align 8
  %40 = getelementptr inbounds %struct.tc_dev, %struct.tc_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tc_device_id*, %struct.tc_device_id** %6, align 8
  %43 = getelementptr inbounds %struct.tc_device_id, %struct.tc_device_id* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = call i64 @strcmp(i32 %41, i64* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load %struct.tc_device_id*, %struct.tc_device_id** %6, align 8
  store %struct.tc_device_id* %48, %struct.tc_device_id** %3, align 8
  br label %54

49:                                               ; preds = %38, %29
  %50 = load %struct.tc_device_id*, %struct.tc_device_id** %6, align 8
  %51 = getelementptr inbounds %struct.tc_device_id, %struct.tc_device_id* %50, i32 1
  store %struct.tc_device_id* %51, %struct.tc_device_id** %6, align 8
  br label %13

52:                                               ; preds = %27
  br label %53

53:                                               ; preds = %52, %2
  store %struct.tc_device_id* null, %struct.tc_device_id** %3, align 8
  br label %54

54:                                               ; preds = %53, %47
  %55 = load %struct.tc_device_id*, %struct.tc_device_id** %3, align 8
  ret %struct.tc_device_id* %55
}

declare dso_local i64 @strcmp(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
