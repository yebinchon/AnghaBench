; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_Write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i64, %struct.wb35_reg }
%struct.wb35_reg = type { i32, %struct.wb35_reg_queue*, %struct.wb35_reg_queue* }
%struct.wb35_reg_queue = type { i32, i32, i32, %struct.wb35_reg_queue*, %struct.urb*, %struct.usb_ctrlrequest*, i32 }
%struct.urb = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i8*, i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @Wb35Reg_Write(%struct.hw_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wb35_reg*, align 8
  %9 = alloca %struct.usb_ctrlrequest*, align 8
  %10 = alloca %struct.urb*, align 8
  %11 = alloca %struct.wb35_reg_queue*, align 8
  %12 = alloca i32, align 4
  store %struct.hw_data* %0, %struct.hw_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %14 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %13, i32 0, i32 1
  store %struct.wb35_reg* %14, %struct.wb35_reg** %8, align 8
  store %struct.urb* null, %struct.urb** %10, align 8
  store %struct.wb35_reg_queue* null, %struct.wb35_reg_queue** %11, align 8
  %15 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %16 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i8 0, i8* %4, align 1
  br label %109

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
  br i1 %27, label %28, label %100

28:                                               ; preds = %20
  %29 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %30 = icmp ne %struct.wb35_reg_queue* %29, null
  br i1 %30, label %31, label %100

31:                                               ; preds = %28
  %32 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %33 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %36 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %40 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %42 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %41, i32 0, i32 2
  store i32 0, i32* %42, align 8
  %43 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %44 = bitcast %struct.wb35_reg_queue* %43 to i32*
  %45 = getelementptr inbounds i32, i32* %44, i64 48
  %46 = bitcast i32* %45 to %struct.usb_ctrlrequest*
  store %struct.usb_ctrlrequest* %46, %struct.usb_ctrlrequest** %9, align 8
  %47 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %48 = load i32, i32* @USB_DIR_OUT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %53 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %55 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %54, i32 0, i32 1
  store i32 3, i32* %55, align 4
  %56 = call i8* @cpu_to_le16(i32 0)
  %57 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %58 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i8* @cpu_to_le16(i32 %59)
  %61 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %62 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = call i8* @cpu_to_le16(i32 4)
  %64 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %65 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %67 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %66, i32 0, i32 3
  store %struct.wb35_reg_queue* null, %struct.wb35_reg_queue** %67, align 8
  %68 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %69 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %70 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %69, i32 0, i32 5
  store %struct.usb_ctrlrequest* %68, %struct.usb_ctrlrequest** %70, align 8
  %71 = load %struct.urb*, %struct.urb** %10, align 8
  %72 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %73 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %72, i32 0, i32 4
  store %struct.urb* %71, %struct.urb** %73, align 8
  %74 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %75 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %74, i32 0, i32 0
  %76 = call i32 @spin_lock_irq(i32* %75)
  %77 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %78 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %77, i32 0, i32 2
  %79 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %78, align 8
  %80 = icmp eq %struct.wb35_reg_queue* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %31
  %82 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %83 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %84 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %83, i32 0, i32 2
  store %struct.wb35_reg_queue* %82, %struct.wb35_reg_queue** %84, align 8
  br label %91

85:                                               ; preds = %31
  %86 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %87 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %88 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %87, i32 0, i32 1
  %89 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %88, align 8
  %90 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %89, i32 0, i32 3
  store %struct.wb35_reg_queue* %86, %struct.wb35_reg_queue** %90, align 8
  br label %91

91:                                               ; preds = %85, %81
  %92 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %93 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %94 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %93, i32 0, i32 1
  store %struct.wb35_reg_queue* %92, %struct.wb35_reg_queue** %94, align 8
  %95 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %96 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %95, i32 0, i32 0
  %97 = call i32 @spin_unlock_irq(i32* %96)
  %98 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %99 = call i32 @Wb35Reg_EP0VM_start(%struct.hw_data* %98)
  store i8 1, i8* %4, align 1
  br label %109

100:                                              ; preds = %28, %20
  %101 = load %struct.urb*, %struct.urb** %10, align 8
  %102 = icmp ne %struct.urb* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.urb*, %struct.urb** %10, align 8
  %105 = call i32 @usb_free_urb(%struct.urb* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %11, align 8
  %108 = call i32 @kfree(%struct.wb35_reg_queue* %107)
  store i8 0, i8* %4, align 1
  br label %109

109:                                              ; preds = %106, %91, %19
  %110 = load i8, i8* %4, align 1
  ret i8 %110
}

declare dso_local %struct.wb35_reg_queue* @kzalloc(i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

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
