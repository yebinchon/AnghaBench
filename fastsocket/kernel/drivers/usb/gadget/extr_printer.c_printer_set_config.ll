; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_printer.c_printer_set_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_printer.c_printer_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.printer_dev = type { i32, %struct.usb_gadget* }
%struct.usb_gadget = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"can't change configurations\0A\00", align 1
@ESPIPE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@config_desc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s speed config #%d: %d mA, %s\0A\00", align 1
@driver_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.printer_dev*, i32)* @printer_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printer_set_config(%struct.printer_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.printer_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_gadget*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.printer_dev* %0, %struct.printer_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.printer_dev*, %struct.printer_dev** %4, align 8
  %11 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %10, i32 0, i32 1
  %12 = load %struct.usb_gadget*, %struct.usb_gadget** %11, align 8
  store %struct.usb_gadget* %12, %struct.usb_gadget** %7, align 8
  %13 = load %struct.usb_gadget*, %struct.usb_gadget** %7, align 8
  %14 = call i64 @gadget_is_sa1100(%struct.usb_gadget* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.printer_dev*, %struct.printer_dev** %4, align 8
  %18 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.printer_dev*, %struct.printer_dev** %4, align 8
  %23 = call i32 (%struct.printer_dev*, i8*, ...) @INFO(%struct.printer_dev* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ESPIPE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %74

26:                                               ; preds = %16, %2
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %29 [
    i32 130, label %28
    i32 0, label %32
  ]

28:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %26, %29
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.printer_dev*, %struct.printer_dev** %4, align 8
  %38 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %37, i32 0, i32 1
  %39 = load %struct.usb_gadget*, %struct.usb_gadget** %38, align 8
  %40 = load %struct.printer_dev*, %struct.printer_dev** %4, align 8
  %41 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %40, i32 0, i32 1
  %42 = load %struct.usb_gadget*, %struct.usb_gadget** %41, align 8
  %43 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 8, i32 100
  %48 = call i32 @usb_gadget_vbus_draw(%struct.usb_gadget* %39, i32 %47)
  br label %72

49:                                               ; preds = %33
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config_desc, i32 0, i32 0), align 4
  %51 = mul nsw i32 2, %50
  store i32 %51, i32* %9, align 4
  %52 = load %struct.printer_dev*, %struct.printer_dev** %4, align 8
  %53 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %52, i32 0, i32 1
  %54 = load %struct.usb_gadget*, %struct.usb_gadget** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @usb_gadget_vbus_draw(%struct.usb_gadget* %54, i32 %55)
  %57 = load %struct.usb_gadget*, %struct.usb_gadget** %7, align 8
  %58 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %61 [
    i32 129, label %60
  ]

60:                                               ; preds = %49
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %62

61:                                               ; preds = %49
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.printer_dev*, %struct.printer_dev** %4, align 8
  %65 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.printer_dev*, %struct.printer_dev** %4, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @driver_desc, align 4
  %71 = call i32 (%struct.printer_dev*, i8*, ...) @INFO(%struct.printer_dev* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %67, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %62, %36
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %21
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @gadget_is_sa1100(%struct.usb_gadget*) #1

declare dso_local i32 @INFO(%struct.printer_dev*, i8*, ...) #1

declare dso_local i32 @usb_gadget_vbus_draw(%struct.usb_gadget*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
