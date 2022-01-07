; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c_check_disk_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_block_dev.c_check_disk_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.gendisk* }
%struct.gendisk = type { %struct.block_device_operations* }
%struct.block_device_operations = type { i32 (%struct.gendisk*)*, i32 (%struct.gendisk*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_disk_change(%struct.block_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca %struct.block_device_operations*, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  %6 = load %struct.block_device*, %struct.block_device** %3, align 8
  %7 = getelementptr inbounds %struct.block_device, %struct.block_device* %6, i32 0, i32 0
  %8 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  store %struct.gendisk* %8, %struct.gendisk** %4, align 8
  %9 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %10 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %9, i32 0, i32 0
  %11 = load %struct.block_device_operations*, %struct.block_device_operations** %10, align 8
  store %struct.block_device_operations* %11, %struct.block_device_operations** %5, align 8
  %12 = load %struct.block_device_operations*, %struct.block_device_operations** %5, align 8
  %13 = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %12, i32 0, i32 1
  %14 = load i32 (%struct.gendisk*)*, i32 (%struct.gendisk*)** %13, align 8
  %15 = icmp ne i32 (%struct.gendisk*)* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

17:                                               ; preds = %1
  %18 = load %struct.block_device_operations*, %struct.block_device_operations** %5, align 8
  %19 = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %18, i32 0, i32 1
  %20 = load i32 (%struct.gendisk*)*, i32 (%struct.gendisk*)** %19, align 8
  %21 = load %struct.block_device*, %struct.block_device** %3, align 8
  %22 = getelementptr inbounds %struct.block_device, %struct.block_device* %21, i32 0, i32 0
  %23 = load %struct.gendisk*, %struct.gendisk** %22, align 8
  %24 = call i32 %20(%struct.gendisk* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %43

27:                                               ; preds = %17
  %28 = load %struct.block_device*, %struct.block_device** %3, align 8
  %29 = call i32 @flush_disk(%struct.block_device* %28, i32 1)
  %30 = load %struct.block_device_operations*, %struct.block_device_operations** %5, align 8
  %31 = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %30, i32 0, i32 0
  %32 = load i32 (%struct.gendisk*)*, i32 (%struct.gendisk*)** %31, align 8
  %33 = icmp ne i32 (%struct.gendisk*)* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.block_device_operations*, %struct.block_device_operations** %5, align 8
  %36 = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %35, i32 0, i32 0
  %37 = load i32 (%struct.gendisk*)*, i32 (%struct.gendisk*)** %36, align 8
  %38 = load %struct.block_device*, %struct.block_device** %3, align 8
  %39 = getelementptr inbounds %struct.block_device, %struct.block_device* %38, i32 0, i32 0
  %40 = load %struct.gendisk*, %struct.gendisk** %39, align 8
  %41 = call i32 %37(%struct.gendisk* %40)
  br label %42

42:                                               ; preds = %34, %27
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %26, %16
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @flush_disk(%struct.block_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
