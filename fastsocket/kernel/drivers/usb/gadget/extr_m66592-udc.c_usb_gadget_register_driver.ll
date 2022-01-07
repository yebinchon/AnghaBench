; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_m66592-udc.c_usb_gadget_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_m66592-udc.c_usb_gadget_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m66592 = type { i32, %struct.TYPE_6__, %struct.usb_gadget_driver*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.usb_gadget_driver = type { i64, i32 (%struct.TYPE_6__*)*, %struct.TYPE_5__, i32 }

@the_controller = common dso_local global %struct.m66592* null, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"device_add error (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"bind to driver error (%d)\0A\00", align 1
@M66592_VBSE = common dso_local global i32 0, align 4
@M66592_URST = common dso_local global i32 0, align 4
@M66592_INTENB0 = common dso_local global i32 0, align 4
@M66592_INTSTS0 = common dso_local global i32 0, align 4
@M66592_VBSTS = common dso_local global i32 0, align 4
@M66592_MAX_SAMPLING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_register_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.m66592*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  %6 = load %struct.m66592*, %struct.m66592** @the_controller, align 8
  store %struct.m66592* %6, %struct.m66592** %4, align 8
  %7 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %8 = icmp ne %struct.usb_gadget_driver* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %11 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_SPEED_HIGH, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %9
  %16 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %17 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %16, i32 0, i32 1
  %18 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %17, align 8
  %19 = icmp ne i32 (%struct.TYPE_6__*)* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %22 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %15, %9, %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %121

28:                                               ; preds = %20
  %29 = load %struct.m66592*, %struct.m66592** %4, align 8
  %30 = icmp ne %struct.m66592* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %121

34:                                               ; preds = %28
  %35 = load %struct.m66592*, %struct.m66592** %4, align 8
  %36 = getelementptr inbounds %struct.m66592, %struct.m66592* %35, i32 0, i32 2
  %37 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %36, align 8
  %38 = icmp ne %struct.usb_gadget_driver* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %121

42:                                               ; preds = %34
  %43 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %44 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %47 = load %struct.m66592*, %struct.m66592** %4, align 8
  %48 = getelementptr inbounds %struct.m66592, %struct.m66592* %47, i32 0, i32 2
  store %struct.usb_gadget_driver* %46, %struct.usb_gadget_driver** %48, align 8
  %49 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %50 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %49, i32 0, i32 2
  %51 = load %struct.m66592*, %struct.m66592** %4, align 8
  %52 = getelementptr inbounds %struct.m66592, %struct.m66592* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %54, align 8
  %55 = load %struct.m66592*, %struct.m66592** %4, align 8
  %56 = getelementptr inbounds %struct.m66592, %struct.m66592* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = call i32 @device_add(%struct.TYPE_7__* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %42
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %113

64:                                               ; preds = %42
  %65 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %66 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %65, i32 0, i32 1
  %67 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %66, align 8
  %68 = load %struct.m66592*, %struct.m66592** %4, align 8
  %69 = getelementptr inbounds %struct.m66592, %struct.m66592* %68, i32 0, i32 1
  %70 = call i32 %67(%struct.TYPE_6__* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load %struct.m66592*, %struct.m66592** %4, align 8
  %77 = getelementptr inbounds %struct.m66592, %struct.m66592* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = call i32 @device_del(%struct.TYPE_7__* %78)
  br label %113

80:                                               ; preds = %64
  %81 = load %struct.m66592*, %struct.m66592** %4, align 8
  %82 = load i32, i32* @M66592_VBSE, align 4
  %83 = load i32, i32* @M66592_URST, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @M66592_INTENB0, align 4
  %86 = call i32 @m66592_bset(%struct.m66592* %81, i32 %84, i32 %85)
  %87 = load %struct.m66592*, %struct.m66592** %4, align 8
  %88 = load i32, i32* @M66592_INTSTS0, align 4
  %89 = call i32 @m66592_read(%struct.m66592* %87, i32 %88)
  %90 = load i32, i32* @M66592_VBSTS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %80
  %94 = load %struct.m66592*, %struct.m66592** %4, align 8
  %95 = call i32 @m66592_start_xclock(%struct.m66592* %94)
  %96 = load %struct.m66592*, %struct.m66592** %4, align 8
  %97 = load i32, i32* @M66592_INTSTS0, align 4
  %98 = call i32 @m66592_read(%struct.m66592* %96, i32 %97)
  %99 = load i32, i32* @M66592_VBSTS, align 4
  %100 = and i32 %98, %99
  %101 = load %struct.m66592*, %struct.m66592** %4, align 8
  %102 = getelementptr inbounds %struct.m66592, %struct.m66592* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @M66592_MAX_SAMPLING, align 4
  %104 = load %struct.m66592*, %struct.m66592** %4, align 8
  %105 = getelementptr inbounds %struct.m66592, %struct.m66592* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load %struct.m66592*, %struct.m66592** %4, align 8
  %107 = getelementptr inbounds %struct.m66592, %struct.m66592* %106, i32 0, i32 3
  %108 = load i64, i64* @jiffies, align 8
  %109 = call i64 @msecs_to_jiffies(i32 50)
  %110 = add nsw i64 %108, %109
  %111 = call i32 @mod_timer(i32* %107, i64 %110)
  br label %112

112:                                              ; preds = %93, %80
  store i32 0, i32* %2, align 4
  br label %121

113:                                              ; preds = %73, %61
  %114 = load %struct.m66592*, %struct.m66592** %4, align 8
  %115 = getelementptr inbounds %struct.m66592, %struct.m66592* %114, i32 0, i32 2
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %115, align 8
  %116 = load %struct.m66592*, %struct.m66592** %4, align 8
  %117 = getelementptr inbounds %struct.m66592, %struct.m66592* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %119, align 8
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %113, %112, %39, %31, %25
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @device_add(%struct.TYPE_7__*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @device_del(%struct.TYPE_7__*) #1

declare dso_local i32 @m66592_bset(%struct.m66592*, i32, i32) #1

declare dso_local i32 @m66592_read(%struct.m66592*, i32) #1

declare dso_local i32 @m66592_start_xclock(%struct.m66592*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
