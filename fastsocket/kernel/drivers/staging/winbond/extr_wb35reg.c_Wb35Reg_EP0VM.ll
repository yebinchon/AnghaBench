; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_EP0VM.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_EP0VM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { %struct.TYPE_2__, i64, %struct.wb35_reg }
%struct.TYPE_2__ = type { i32 }
%struct.wb35_reg = type { i32, i32, i32, %struct.wb35_reg_queue*, i64 }
%struct.wb35_reg_queue = type { i32, i32, i32*, %struct.urb*, %struct.usb_ctrlrequest* }
%struct.urb = type { i32 }
%struct.usb_ctrlrequest = type { i32 }

@Wb35Reg_EP0VM_complete = common dso_local global i32 0, align 4
@VM_RUNNING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@VM_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Wb35Reg_EP0VM(%struct.hw_data* %0) #0 {
  %2 = alloca %struct.hw_data*, align 8
  %3 = alloca %struct.wb35_reg*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wb35_reg_queue*, align 8
  store %struct.hw_data* %0, %struct.hw_data** %2, align 8
  %9 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %10 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %9, i32 0, i32 2
  store %struct.wb35_reg* %10, %struct.wb35_reg** %3, align 8
  store i32 -1, i32* %7, align 4
  %11 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %12 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %88

16:                                               ; preds = %1
  %17 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %18 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %88

22:                                               ; preds = %16
  %23 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %24 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %23, i32 0, i32 2
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %27 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %26, i32 0, i32 3
  %28 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %27, align 8
  store %struct.wb35_reg_queue* %28, %struct.wb35_reg_queue** %8, align 8
  %29 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %30 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %29, i32 0, i32 2
  %31 = call i32 @spin_unlock_irq(i32* %30)
  %32 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %8, align 8
  %33 = icmp ne %struct.wb35_reg_queue* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  br label %88

35:                                               ; preds = %22
  %36 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %8, align 8
  %37 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %36, i32 0, i32 3
  %38 = load %struct.urb*, %struct.urb** %37, align 8
  store %struct.urb* %38, %struct.urb** %4, align 8
  %39 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %8, align 8
  %40 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %39, i32 0, i32 4
  %41 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %40, align 8
  store %struct.usb_ctrlrequest* %41, %struct.usb_ctrlrequest** %5, align 8
  %42 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %8, align 8
  %43 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %42, i32 0, i32 3
  %44 = load %struct.urb*, %struct.urb** %43, align 8
  store %struct.urb* %44, %struct.urb** %4, align 8
  %45 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %8, align 8
  %46 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %6, align 8
  %48 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %8, align 8
  %49 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %35
  %53 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %8, align 8
  %54 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %53, i32 0, i32 1
  store i32* %54, i32** %6, align 8
  br label %55

55:                                               ; preds = %52, %35
  %56 = load %struct.urb*, %struct.urb** %4, align 8
  %57 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %58 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %62 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %8, align 8
  %66 = call i32 @REG_DIRECTION(i32 %64, %struct.wb35_reg_queue* %65)
  %67 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %68 = bitcast %struct.usb_ctrlrequest* %67 to i32*
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %71 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cpu_to_le16(i32 %72)
  %74 = load i32, i32* @Wb35Reg_EP0VM_complete, align 4
  %75 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %76 = bitcast %struct.hw_data* %75 to i8*
  %77 = call i32 @usb_fill_control_urb(%struct.urb* %56, i32 %60, i32 %66, i32* %68, i32* %69, i32 %73, i32 %74, i8* %76)
  %78 = load i32, i32* @VM_RUNNING, align 4
  %79 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %80 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.urb*, %struct.urb** %4, align 8
  %82 = load i32, i32* @GFP_ATOMIC, align 4
  %83 = call i32 @usb_submit_urb(%struct.urb* %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %55
  br label %88

87:                                               ; preds = %55
  br label %95

88:                                               ; preds = %86, %34, %21, %15
  %89 = load i32, i32* @VM_STOP, align 4
  %90 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %91 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.wb35_reg*, %struct.wb35_reg** %3, align 8
  %93 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %92, i32 0, i32 0
  %94 = call i32 @atomic_dec(i32* %93)
  br label %95

95:                                               ; preds = %88, %87
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @usb_fill_control_urb(%struct.urb*, i32, i32, i32*, i32*, i32, i32, i8*) #1

declare dso_local i32 @REG_DIRECTION(i32, %struct.wb35_reg_queue*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
