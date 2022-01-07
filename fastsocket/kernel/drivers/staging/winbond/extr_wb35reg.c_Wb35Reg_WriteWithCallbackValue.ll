; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_WriteWithCallbackValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_WriteWithCallbackValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i64, %struct.wb35_reg }
%struct.wb35_reg = type { i32, %struct.wb35_reg_queue*, %struct.wb35_reg_queue* }
%struct.wb35_reg_queue = type { i32, i32, i32, %struct.wb35_reg_queue*, %struct.urb*, %struct.usb_ctrlrequest*, i32, i32 }
%struct.urb = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i8*, i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @Wb35Reg_WriteWithCallbackValue(%struct.hw_data* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca %struct.hw_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wb35_reg*, align 8
  %13 = alloca %struct.usb_ctrlrequest*, align 8
  %14 = alloca %struct.urb*, align 8
  %15 = alloca %struct.wb35_reg_queue*, align 8
  %16 = alloca i32, align 4
  store %struct.hw_data* %0, %struct.hw_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.hw_data*, %struct.hw_data** %7, align 8
  %18 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %17, i32 0, i32 1
  store %struct.wb35_reg* %18, %struct.wb35_reg** %12, align 8
  store %struct.urb* null, %struct.urb** %14, align 8
  store %struct.wb35_reg_queue* null, %struct.wb35_reg_queue** %15, align 8
  %19 = load %struct.hw_data*, %struct.hw_data** %7, align 8
  %20 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i8 0, i8* %6, align 1
  br label %119

24:                                               ; preds = %5
  store i32 80, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.wb35_reg_queue* @kzalloc(i32 %25, i32 %26)
  store %struct.wb35_reg_queue* %27, %struct.wb35_reg_queue** %15, align 8
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %28)
  store %struct.urb* %29, %struct.urb** %14, align 8
  %30 = load %struct.urb*, %struct.urb** %14, align 8
  %31 = icmp ne %struct.urb* %30, null
  br i1 %31, label %32, label %110

32:                                               ; preds = %24
  %33 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %15, align 8
  %34 = icmp ne %struct.wb35_reg_queue* %33, null
  br i1 %34, label %35, label %110

35:                                               ; preds = %32
  %36 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %15, align 8
  %37 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %15, align 8
  %40 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @cpu_to_le32(i32 %41)
  %43 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %15, align 8
  %44 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %15, align 8
  %46 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @memcpy(i32 %47, i32* %48, i32 %49)
  %51 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %15, align 8
  %52 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %51, i32 0, i32 2
  store i32 1, i32* %52, align 8
  %53 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %15, align 8
  %54 = bitcast %struct.wb35_reg_queue* %53 to i32*
  %55 = getelementptr inbounds i32, i32* %54, i64 48
  %56 = bitcast i32* %55 to %struct.usb_ctrlrequest*
  store %struct.usb_ctrlrequest* %56, %struct.usb_ctrlrequest** %13, align 8
  %57 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %58 = load i32, i32* @USB_DIR_OUT, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %13, align 8
  %63 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %13, align 8
  %65 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %64, i32 0, i32 1
  store i32 3, i32* %65, align 4
  %66 = call i8* @cpu_to_le16(i32 0)
  %67 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %13, align 8
  %68 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i8* @cpu_to_le16(i32 %69)
  %71 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %13, align 8
  %72 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = call i8* @cpu_to_le16(i32 4)
  %74 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %13, align 8
  %75 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %15, align 8
  %77 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %76, i32 0, i32 3
  store %struct.wb35_reg_queue* null, %struct.wb35_reg_queue** %77, align 8
  %78 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %13, align 8
  %79 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %15, align 8
  %80 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %79, i32 0, i32 5
  store %struct.usb_ctrlrequest* %78, %struct.usb_ctrlrequest** %80, align 8
  %81 = load %struct.urb*, %struct.urb** %14, align 8
  %82 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %15, align 8
  %83 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %82, i32 0, i32 4
  store %struct.urb* %81, %struct.urb** %83, align 8
  %84 = load %struct.wb35_reg*, %struct.wb35_reg** %12, align 8
  %85 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %84, i32 0, i32 0
  %86 = call i32 @spin_lock_irq(i32* %85)
  %87 = load %struct.wb35_reg*, %struct.wb35_reg** %12, align 8
  %88 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %87, i32 0, i32 2
  %89 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %88, align 8
  %90 = icmp eq %struct.wb35_reg_queue* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %35
  %92 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %15, align 8
  %93 = load %struct.wb35_reg*, %struct.wb35_reg** %12, align 8
  %94 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %93, i32 0, i32 2
  store %struct.wb35_reg_queue* %92, %struct.wb35_reg_queue** %94, align 8
  br label %101

95:                                               ; preds = %35
  %96 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %15, align 8
  %97 = load %struct.wb35_reg*, %struct.wb35_reg** %12, align 8
  %98 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %97, i32 0, i32 1
  %99 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %98, align 8
  %100 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %99, i32 0, i32 3
  store %struct.wb35_reg_queue* %96, %struct.wb35_reg_queue** %100, align 8
  br label %101

101:                                              ; preds = %95, %91
  %102 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %15, align 8
  %103 = load %struct.wb35_reg*, %struct.wb35_reg** %12, align 8
  %104 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %103, i32 0, i32 1
  store %struct.wb35_reg_queue* %102, %struct.wb35_reg_queue** %104, align 8
  %105 = load %struct.wb35_reg*, %struct.wb35_reg** %12, align 8
  %106 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %105, i32 0, i32 0
  %107 = call i32 @spin_unlock_irq(i32* %106)
  %108 = load %struct.hw_data*, %struct.hw_data** %7, align 8
  %109 = call i32 @Wb35Reg_EP0VM_start(%struct.hw_data* %108)
  store i8 1, i8* %6, align 1
  br label %119

110:                                              ; preds = %32, %24
  %111 = load %struct.urb*, %struct.urb** %14, align 8
  %112 = icmp ne %struct.urb* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.urb*, %struct.urb** %14, align 8
  %115 = call i32 @usb_free_urb(%struct.urb* %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %15, align 8
  %118 = call i32 @kfree(%struct.wb35_reg_queue* %117)
  store i8 0, i8* %6, align 1
  br label %119

119:                                              ; preds = %116, %101, %23
  %120 = load i8, i8* %6, align 1
  ret i8 %120
}

declare dso_local %struct.wb35_reg_queue* @kzalloc(i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

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
