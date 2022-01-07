; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_WriteSync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_WriteSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i32, %struct.TYPE_2__, %struct.wb35_reg }
%struct.TYPE_2__ = type { i32 }
%struct.wb35_reg = type { i32, i64 }

@VM_STOP = common dso_local global i64 0, align 8
@VM_RUNNING = common dso_local global i64 0, align 8
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @Wb35Reg_WriteSync(%struct.hw_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wb35_reg*, align 8
  %9 = alloca i32, align 4
  store %struct.hw_data* %0, %struct.hw_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %11 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %10, i32 0, i32 2
  store %struct.wb35_reg* %11, %struct.wb35_reg** %8, align 8
  store i32 -1, i32* %9, align 4
  %12 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %13 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i8 0, i8* %4, align 1
  br label %65

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @cpu_to_le32(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %21 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %28, %17
  %23 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %24 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VM_STOP, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @msleep(i32 10)
  br label %22

30:                                               ; preds = %22
  %31 = load i64, i64* @VM_RUNNING, align 8
  %32 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %33 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %35 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %39 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @usb_sndctrlpipe(i32 %41, i32 0)
  %43 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %44 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @USB_DIR_OUT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @HZ, align 4
  %50 = mul nsw i32 %49, 100
  %51 = call i32 @usb_control_msg(i32 %37, i32 %42, i32 3, i32 %47, i32 0, i32 %48, i32* %7, i32 4, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i64, i64* @VM_STOP, align 8
  %53 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %54 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %56 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %58 = call i32 @Wb35Reg_EP0VM_start(%struct.hw_data* %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %30
  %62 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %63 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  store i8 0, i8* %4, align 1
  br label %65

64:                                               ; preds = %30
  store i8 1, i8* %4, align 1
  br label %65

65:                                               ; preds = %64, %61, %16
  %66 = load i8, i8* %4, align 1
  ret i8 %66
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @Wb35Reg_EP0VM_start(%struct.hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
