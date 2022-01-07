; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_net-sysfs.c_netdev_register_kobject.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_net-sysfs.c_netdev_register_kobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i64, i32, %struct.attribute_group**, %struct.device }
%struct.attribute_group = type { i32 }
%struct.device = type { %struct.attribute_group**, %struct.net_device*, i32* }

@net_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@init_net = common dso_local global i32 0, align 4
@netstat_group = common dso_local global i32 0, align 4
@wireless_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netdev_register_kobject(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.attribute_group**, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 4
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 3
  %11 = load %struct.attribute_group**, %struct.attribute_group*** %10, align 8
  store %struct.attribute_group** %11, %struct.attribute_group*** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 2
  store i32* @net_class, i32** %13, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 1
  store %struct.net_device* %14, %struct.net_device** %16, align 8
  %17 = load %struct.attribute_group**, %struct.attribute_group*** %5, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  store %struct.attribute_group** %17, %struct.attribute_group*** %19, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_set_name(%struct.device* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32* @dev_net(%struct.net_device* %25)
  %27 = icmp ne i32* %26, @init_net
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

29:                                               ; preds = %1
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @device_add(%struct.device* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %47

36:                                               ; preds = %29
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @register_queue_kobjects(%struct.net_device* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @device_del(%struct.device* %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %41, %34, %28
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i32* @dev_net(%struct.net_device*) #1

declare dso_local i32 @device_add(%struct.device*) #1

declare dso_local i32 @register_queue_kobjects(%struct.net_device*) #1

declare dso_local i32 @device_del(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
