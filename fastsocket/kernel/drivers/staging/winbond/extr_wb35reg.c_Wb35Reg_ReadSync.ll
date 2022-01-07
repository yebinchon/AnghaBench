; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_ReadSync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_ReadSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i32, %struct.TYPE_2__, %struct.wb35_reg }
%struct.TYPE_2__ = type { i32 }
%struct.wb35_reg = type { i32, i64 }

@VM_STOP = common dso_local global i64 0, align 8
@VM_RUNNING = common dso_local global i64 0, align 8
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @Wb35Reg_ReadSync(%struct.hw_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wb35_reg*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.hw_data* %0, %struct.hw_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %12 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %11, i32 0, i32 2
  store %struct.wb35_reg* %12, %struct.wb35_reg** %8, align 8
  %13 = load i32*, i32** %7, align 8
  store i32* %13, i32** %9, align 8
  store i32 -1, i32* %10, align 4
  %14 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %15 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i8 0, i8* %4, align 1
  br label %75

19:                                               ; preds = %3
  %20 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %21 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %28, %19
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
  %42 = call i32 @usb_rcvctrlpipe(i32 %41, i32 0)
  %43 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %44 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @USB_DIR_IN, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* @HZ, align 4
  %51 = mul nsw i32 %50, 100
  %52 = call i32 @usb_control_msg(i32 %37, i32 %42, i32 1, i32 %47, i32 0, i32 %48, i32* %49, i32 4, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cpu_to_le32(i32 %54)
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i64, i64* @VM_STOP, align 8
  %58 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %59 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @Wb35Reg_Update(%struct.hw_data* %60, i32 %61, i32 %63)
  %65 = load %struct.wb35_reg*, %struct.wb35_reg** %8, align 8
  %66 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %68 = call i32 @Wb35Reg_EP0VM_start(%struct.hw_data* %67)
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %30
  %72 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %73 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  store i8 0, i8* %4, align 1
  br label %75

74:                                               ; preds = %30
  store i8 1, i8* %4, align 1
  br label %75

75:                                               ; preds = %74, %71, %18
  %76 = load i8, i8* %4, align 1
  ret i8 %76
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @Wb35Reg_Update(%struct.hw_data*, i32, i32) #1

declare dso_local i32 @Wb35Reg_EP0VM_start(%struct.hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
