; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_Read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i64, %struct.wb35_reg }
%struct.wb35_reg = type { i32, %struct.wb35_reg_queue*, %struct.wb35_reg_queue* }
%struct.wb35_reg_queue = type { i32, %struct.wb35_reg_queue*, %struct.urb*, %struct.usb_ctrlrequest*, i32*, i64 }
%struct.urb = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i8*, i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @Wb35Reg_Read(%struct.hw_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wb35_reg*, align 8
  %9 = alloca %struct.usb_ctrlrequest*, align 8
  %10 = alloca %struct.urb*, align 8
  %11 = alloca %struct.wb35_reg_queue*, align 8
  %12 = alloca i32, align 4
  store %struct.hw_data* %0, %struct.hw_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %14 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %13, i32 0, i32 1
  store %struct.wb35_reg* %14, %struct.wb35_reg** %8, align 8
  %15 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %16 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i8 0, i8* %4, align 1
  br label %106

20:                                               ; preds = %3
  store i32 80, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.wb35_reg_queue* @kzalloc(i32 %21, i32 %22)
  store %struct.wb35_reg_queue* %23, %struct.wb35_reg_queue** %11, align 8
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %24)
  store %struct.urb* %25, %struct.urb** %10, align 8
  %26 = load %struct.urb*, %struct.urb** %10, align 8
  %27 = icmp ne %struct.urb* %26, null
  br i1 %27, label %28, label %97

28:                                               ; preds = %20
  %29 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %30 = icmp ne %struct.wb35_reg_queue* %29, null
  br i1 %30, label %31, label %97

31:                                               ; preds = %28
  %32 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %33 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %36 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %39 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %38, i32 0, i32 4
  store i32* %37, i32** %39, align 8
  %40 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %41 = bitcast %struct.wb35_reg_queue* %40 to i32*
  %42 = getelementptr inbounds i32, i32* %41, i64 48
  %43 = bitcast i32* %42 to %struct.usb_ctrlrequest*
  store %struct.usb_ctrlrequest* %43, %struct.usb_ctrlrequest** %9, align 8
  %44 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %45 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @USB_DIR_IN, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %50 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %52 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = call i8* @cpu_to_le16(i32 0)
  %54 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %55 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i8* @cpu_to_le16(i32 %56)
  %58 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %59 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = call i8* @cpu_to_le16(i32 4)
  %61 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %62 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %64 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %63, i32 0, i32 1
  store %struct.wb35_reg_queue* null, %struct.wb35_reg_queue** %64, align 8
  %65 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %66 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %67 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %66, i32 0, i32 3
  store %struct.usb_ctrlrequest* %65, %struct.usb_ctrlrequest** %67, align 8
  %68 = load %struct.urb*, %struct.urb** %10, align 8
  %69 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %70 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %69, i32 0, i32 2
  store %struct.urb* %68, %struct.urb** %70, align 8
  %71 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %72 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %71, i32 0, i32 0
  %73 = call i32 @spin_lock_irq(i32* %72)
  %74 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %75 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %74, i32 0, i32 2
  %76 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %75, align 8
  %77 = icmp eq %struct.wb35_reg_queue* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %31
  %79 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %80 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %81 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %80, i32 0, i32 2
  store %struct.wb35_reg_queue* %79, %struct.wb35_reg_queue** %81, align 8
  br label %88

82:                                               ; preds = %31
  %83 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %84 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %85 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %84, i32 0, i32 1
  %86 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %85, align 8
  %87 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %86, i32 0, i32 1
  store %struct.wb35_reg_queue* %83, %struct.wb35_reg_queue** %87, align 8
  br label %88

88:                                               ; preds = %82, %78
  %89 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %90 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %91 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %90, i32 0, i32 1
  store %struct.wb35_reg_queue* %89, %struct.wb35_reg_queue** %91, align 8
  %92 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %93 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock_irq(i32* %93)
  %95 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %96 = call i32 @Wb35Reg_EP0VM_start(%struct.hw_data* %95)
  store i8 1, i8* %4, align 1
  br label %106

97:                                               ; preds = %28, %20
  %98 = load %struct.urb*, %struct.urb** %10, align 8
  %99 = icmp ne %struct.urb* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.urb*, %struct.urb** %10, align 8
  %102 = call i32 @usb_free_urb(%struct.urb* %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %105 = call i32 @kfree(%struct.wb35_reg_queue* %104)
  store i8 0, i8* %4, align 1
  br label %106

106:                                              ; preds = %103, %88, %19
  %107 = load i8, i8* %4, align 1
  ret i8 %107
}

declare dso_local %struct.wb35_reg_queue* @kzalloc(i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @Wb35Reg_EP0VM_start(%struct.hw_data*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree(%struct.wb35_reg_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
