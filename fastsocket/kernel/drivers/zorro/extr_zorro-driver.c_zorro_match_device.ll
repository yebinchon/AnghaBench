; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/zorro/extr_zorro-driver.c_zorro_match_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/zorro/extr_zorro-driver.c_zorro_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zorro_device_id = type { i64 }
%struct.zorro_dev = type { i64 }

@ZORRO_WILDCARD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zorro_device_id* @zorro_match_device(%struct.zorro_device_id* %0, %struct.zorro_dev* %1) #0 {
  %3 = alloca %struct.zorro_device_id*, align 8
  %4 = alloca %struct.zorro_device_id*, align 8
  %5 = alloca %struct.zorro_dev*, align 8
  store %struct.zorro_device_id* %0, %struct.zorro_device_id** %4, align 8
  store %struct.zorro_dev* %1, %struct.zorro_dev** %5, align 8
  br label %6

6:                                                ; preds = %27, %2
  %7 = load %struct.zorro_device_id*, %struct.zorro_device_id** %4, align 8
  %8 = getelementptr inbounds %struct.zorro_device_id, %struct.zorro_device_id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %6
  %12 = load %struct.zorro_device_id*, %struct.zorro_device_id** %4, align 8
  %13 = getelementptr inbounds %struct.zorro_device_id, %struct.zorro_device_id* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ZORRO_WILDCARD, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = load %struct.zorro_device_id*, %struct.zorro_device_id** %4, align 8
  %19 = getelementptr inbounds %struct.zorro_device_id, %struct.zorro_device_id* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.zorro_dev*, %struct.zorro_dev** %5, align 8
  %22 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17, %11
  %26 = load %struct.zorro_device_id*, %struct.zorro_device_id** %4, align 8
  store %struct.zorro_device_id* %26, %struct.zorro_device_id** %3, align 8
  br label %31

27:                                               ; preds = %17
  %28 = load %struct.zorro_device_id*, %struct.zorro_device_id** %4, align 8
  %29 = getelementptr inbounds %struct.zorro_device_id, %struct.zorro_device_id* %28, i32 1
  store %struct.zorro_device_id* %29, %struct.zorro_device_id** %4, align 8
  br label %6

30:                                               ; preds = %6
  store %struct.zorro_device_id* null, %struct.zorro_device_id** %3, align 8
  br label %31

31:                                               ; preds = %30, %25
  %32 = load %struct.zorro_device_id*, %struct.zorro_device_id** %3, align 8
  ret %struct.zorro_device_id* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
