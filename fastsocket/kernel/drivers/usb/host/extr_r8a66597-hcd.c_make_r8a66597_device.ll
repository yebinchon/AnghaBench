; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_make_r8a66597_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_make_r8a66597_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.r8a66597_device* }
%struct.r8a66597_device = type { i32, i64, i32, i32, i32, i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.urb = type { i32*, %struct.TYPE_4__* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_STATE_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8a66597*, %struct.urb*, i32)* @make_r8a66597_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_r8a66597_device(%struct.r8a66597* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8a66597*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.r8a66597_device*, align 8
  %9 = alloca i32, align 4
  store %struct.r8a66597* %0, %struct.r8a66597** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.urb*, %struct.urb** %6, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.r8a66597_device* @kzalloc(i32 64, i32 %15)
  store %struct.r8a66597_device* %16, %struct.r8a66597_device** %8, align 8
  %17 = load %struct.r8a66597_device*, %struct.r8a66597_device** %8, align 8
  %18 = icmp eq %struct.r8a66597_device* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %106

22:                                               ; preds = %3
  %23 = load %struct.urb*, %struct.urb** %6, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load %struct.r8a66597_device*, %struct.r8a66597_device** %8, align 8
  %28 = call i32 @dev_set_drvdata(i32* %26, %struct.r8a66597_device* %27)
  %29 = load %struct.urb*, %struct.urb** %6, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.r8a66597_device*, %struct.r8a66597_device** %8, align 8
  %33 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %32, i32 0, i32 8
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.r8a66597_device*, %struct.r8a66597_device** %8, align 8
  %36 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.r8a66597_device*, %struct.r8a66597_device** %8, align 8
  %39 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @USB_STATE_ADDRESS, align 4
  %41 = load %struct.r8a66597_device*, %struct.r8a66597_device** %8, align 8
  %42 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load %struct.r8a66597_device*, %struct.r8a66597_device** %8, align 8
  %44 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %43, i32 0, i32 6
  store i64 0, i64* %44, align 8
  %45 = load %struct.r8a66597_device*, %struct.r8a66597_device** %8, align 8
  %46 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %45, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = load %struct.r8a66597_device*, %struct.r8a66597_device** %8, align 8
  %48 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %47, i32 0, i32 4
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.r8a66597_device*, %struct.r8a66597_device** %8, align 8
  %51 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %50, i32 0, i32 4
  %52 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %53 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %52, i32 0, i32 1
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  %55 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %56 = load %struct.urb*, %struct.urb** %6, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.r8a66597_device*, %struct.r8a66597_device** %8, align 8
  %62 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %61, i32 0, i32 1
  %63 = load %struct.r8a66597_device*, %struct.r8a66597_device** %8, align 8
  %64 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %63, i32 0, i32 2
  %65 = call i32 @get_port_number(%struct.r8a66597* %55, i32 %60, i64* %62, i32* %64)
  %66 = load %struct.urb*, %struct.urb** %6, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @is_child_device(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %22
  %74 = load %struct.r8a66597_device*, %struct.r8a66597_device** %8, align 8
  %75 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %76 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load %struct.r8a66597_device*, %struct.r8a66597_device** %8, align 8
  %79 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store %struct.r8a66597_device* %74, %struct.r8a66597_device** %82, align 8
  br label %83

83:                                               ; preds = %73, %22
  %84 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %85 = load %struct.r8a66597_device*, %struct.r8a66597_device** %8, align 8
  %86 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.urb*, %struct.urb** %6, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @get_r8a66597_usb_speed(i32 %92)
  %94 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %95 = load %struct.urb*, %struct.urb** %6, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = call i32 @get_parent_r8a66597_address(%struct.r8a66597* %94, %struct.TYPE_4__* %97)
  %99 = load %struct.r8a66597_device*, %struct.r8a66597_device** %8, align 8
  %100 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.r8a66597_device*, %struct.r8a66597_device** %8, align 8
  %103 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @set_devadd_reg(%struct.r8a66597* %84, i32 %87, i32 %93, i32 %98, i32 %101, i64 %104)
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %83, %19
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.r8a66597_device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.r8a66597_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @get_port_number(%struct.r8a66597*, i32, i64*, i32*) #1

declare dso_local i32 @is_child_device(i32) #1

declare dso_local i32 @set_devadd_reg(%struct.r8a66597*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @get_r8a66597_usb_speed(i32) #1

declare dso_local i32 @get_parent_r8a66597_address(%struct.r8a66597*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
