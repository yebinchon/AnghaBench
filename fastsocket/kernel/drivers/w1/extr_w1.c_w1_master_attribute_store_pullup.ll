; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/extr_w1.c_w1_master_attribute_store_pullup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/extr_w1.c_w1_master_attribute_store_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w1_master = type { i64, i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @w1_master_attribute_store_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @w1_master_attribute_store_pullup(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.w1_master*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.w1_master* @dev_to_w1_master(%struct.device* %12)
  store %struct.w1_master* %13, %struct.w1_master** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @strict_strtol(i8* %14, i32 0, i64* %10)
  %16 = load i64, i64* @EINVAL, align 8
  %17 = sub i64 0, %16
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %5, align 8
  br label %37

22:                                               ; preds = %4
  %23 = load %struct.w1_master*, %struct.w1_master** %11, align 8
  %24 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.w1_master*, %struct.w1_master** %11, align 8
  %28 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.w1_master*, %struct.w1_master** %11, align 8
  %30 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %29, i32 0, i32 2
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.w1_master*, %struct.w1_master** %11, align 8
  %33 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @wake_up_process(i32 %34)
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %22, %19
  %38 = load i64, i64* %5, align 8
  ret i64 %38
}

declare dso_local %struct.w1_master* @dev_to_w1_master(%struct.device*) #1

declare dso_local i64 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
