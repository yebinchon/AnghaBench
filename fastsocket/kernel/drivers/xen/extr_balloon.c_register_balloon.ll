; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_balloon.c_register_balloon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_balloon.c_register_balloon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32, i32*, i64 }

@balloon_sysdev_class = common dso_local global i32 0, align 4
@balloon_attrs = common dso_local global i32* null, align 8
@balloon_info_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sys_device*)* @register_balloon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_balloon(%struct.sys_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sys_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sys_device* %0, %struct.sys_device** %3, align 8
  %6 = call i32 @sysdev_class_register(i32* @balloon_sysdev_class)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %2, align 4
  br label %70

11:                                               ; preds = %1
  %12 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %13 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %15 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %14, i32 0, i32 1
  store i32* @balloon_sysdev_class, i32** %15, align 8
  %16 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %17 = call i32 @sysdev_register(%struct.sys_device* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = call i32 @sysdev_class_unregister(i32* @balloon_sysdev_class)
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %70

23:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %41, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32*, i32** @balloon_attrs, align 8
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %31 = load i32*, i32** @balloon_attrs, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sysdev_create_file(%struct.sys_device* %30, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %52

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %24

44:                                               ; preds = %24
  %45 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %46 = getelementptr inbounds %struct.sys_device, %struct.sys_device* %45, i32 0, i32 0
  %47 = call i32 @sysfs_create_group(i32* %46, i32* @balloon_info_group)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %52

51:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %70

52:                                               ; preds = %50, %39
  br label %53

53:                                               ; preds = %57, %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %4, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %59 = load i32*, i32** @balloon_attrs, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @sysdev_remove_file(%struct.sys_device* %58, i32 %63)
  br label %53

65:                                               ; preds = %53
  %66 = load %struct.sys_device*, %struct.sys_device** %3, align 8
  %67 = call i32 @sysdev_unregister(%struct.sys_device* %66)
  %68 = call i32 @sysdev_class_unregister(i32* @balloon_sysdev_class)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %65, %51, %20, %9
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @sysdev_class_register(i32*) #1

declare dso_local i32 @sysdev_register(%struct.sys_device*) #1

declare dso_local i32 @sysdev_class_unregister(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @sysdev_create_file(%struct.sys_device*, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @sysdev_remove_file(%struct.sys_device*, i32) #1

declare dso_local i32 @sysdev_unregister(%struct.sys_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
