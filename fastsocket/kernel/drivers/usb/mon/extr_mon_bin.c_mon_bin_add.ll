; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_bin.c_mon_bin_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_bin.c_mon_bin_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_bus = type { %struct.device* }
%struct.device = type { i32 }
%struct.usb_bus = type { i32, i32* }

@MON_BIN_MAX_MINOR = common dso_local global i32 0, align 4
@mon_bin_class = common dso_local global i32 0, align 4
@mon_bin_dev0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"usbmon%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mon_bin_add(%struct.mon_bus* %0, %struct.usb_bus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mon_bus*, align 8
  %5 = alloca %struct.usb_bus*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.mon_bus* %0, %struct.mon_bus** %4, align 8
  store %struct.usb_bus* %1, %struct.usb_bus** %5, align 8
  %8 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %9 = icmp ne %struct.usb_bus* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %12 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i32 [ %13, %10 ], [ 0, %14 ]
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MON_BIN_MAX_MINOR, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %46

21:                                               ; preds = %15
  %22 = load i32, i32* @mon_bin_class, align 4
  %23 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %24 = icmp ne %struct.usb_bus* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %27 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32* [ %28, %25 ], [ null, %29 ]
  %32 = load i32, i32* @mon_bin_dev0, align 4
  %33 = call i32 @MAJOR(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @MKDEV(i32 %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.device* @device_create(i32 %22, i32* %31, i32 %35, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %36)
  store %struct.device* %37, %struct.device** %6, align 8
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i64 @IS_ERR(%struct.device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %46

42:                                               ; preds = %30
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load %struct.mon_bus*, %struct.mon_bus** %4, align 8
  %45 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %44, i32 0, i32 0
  store %struct.device* %43, %struct.device** %45, align 8
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %41, %20
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.device* @device_create(i32, i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
