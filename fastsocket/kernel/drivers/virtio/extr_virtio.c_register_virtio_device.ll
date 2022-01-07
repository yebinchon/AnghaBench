; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio.c_register_virtio_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio.c_register_virtio_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { {}* }

@virtio_bus = common dso_local global i32 0, align 4
@virtio_index_ida = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"virtio%u\00", align 1
@VIRTIO_CONFIG_S_ACKNOWLEDGE = common dso_local global i32 0, align 4
@VIRTIO_CONFIG_S_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_virtio_device(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %4 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %5 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32* @virtio_bus, i32** %6, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32 @ida_simple_get(i32* @virtio_index_ida, i32 0, i32 0, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %39

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %15 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %17 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %16, i32 0, i32 1
  %18 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %19 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_set_name(%struct.TYPE_5__* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %23 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.virtio_device*)**
  %27 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %26, align 8
  %28 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %29 = call i32 %27(%struct.virtio_device* %28)
  %30 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %31 = load i32, i32* @VIRTIO_CONFIG_S_ACKNOWLEDGE, align 4
  %32 = call i32 @add_status(%struct.virtio_device* %30, i32 %31)
  %33 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %34 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %33, i32 0, i32 2
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %37 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %36, i32 0, i32 1
  %38 = call i32 @device_register(%struct.TYPE_5__* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %12, %11
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %44 = load i32, i32* @VIRTIO_CONFIG_S_FAILED, align 4
  %45 = call i32 @add_status(%struct.virtio_device* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @add_status(%struct.virtio_device*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @device_register(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
