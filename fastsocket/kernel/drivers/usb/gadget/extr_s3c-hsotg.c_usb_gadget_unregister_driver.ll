; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_usb_gadget_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_usb_gadget_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_hsotg = type { i32, %struct.TYPE_6__, %struct.usb_gadget_driver*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.usb_gadget_driver = type { %struct.TYPE_5__, i32 (%struct.TYPE_6__*)* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@our_hsotg = common dso_local global %struct.s3c_hsotg* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@S3C_HSOTG_EPS = common dso_local global i32 0, align 4
@disconnect = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unregistered gadget driver '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_unregister_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.s3c_hsotg*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  %6 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** @our_hsotg, align 8
  store %struct.s3c_hsotg* %6, %struct.s3c_hsotg** %4, align 8
  %7 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %4, align 8
  %8 = icmp ne %struct.s3c_hsotg* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %74

12:                                               ; preds = %1
  %13 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %14 = icmp ne %struct.usb_gadget_driver* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %17 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %4, align 8
  %18 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %17, i32 0, i32 2
  %19 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %18, align 8
  %20 = icmp ne %struct.usb_gadget_driver* %16, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %23 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %22, i32 0, i32 1
  %24 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %23, align 8
  %25 = icmp ne i32 (%struct.TYPE_6__*)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %15, %12
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %74

29:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @S3C_HSOTG_EPS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %4, align 8
  %36 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @s3c_hsotg_ep_disable(i32* %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %30

46:                                               ; preds = %30
  %47 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %4, align 8
  %48 = load i32, i32* @disconnect, align 4
  %49 = call i32 @call_gadget(%struct.s3c_hsotg* %47, i32 %48)
  %50 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %51 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %51, align 8
  %53 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %4, align 8
  %54 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %53, i32 0, i32 1
  %55 = call i32 %52(%struct.TYPE_6__* %54)
  %56 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %4, align 8
  %57 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %56, i32 0, i32 2
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %57, align 8
  %58 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %59 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %4, align 8
  %60 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %4, align 8
  %63 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = call i32 @device_del(i32* %64)
  %66 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %4, align 8
  %67 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %70 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_info(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %46, %26, %9
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @s3c_hsotg_ep_disable(i32*) #1

declare dso_local i32 @call_gadget(%struct.s3c_hsotg*, i32) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
