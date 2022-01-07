; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_firmware.c_FirmwareEnableCPU.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_firmware.c_FirmwareEnableCPU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@RT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@COMP_FIRMWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"-->FirmwareEnableCPU()\0A\00", align 1
@SYS_CLKR = common dso_local global i32 0, align 4
@SYS_CPU_CLKSEL = common dso_local global i32 0, align 4
@SYS_FUNC_EN = common dso_local global i32 0, align 4
@FEN_CPUEN = common dso_local global i32 0, align 4
@TCR = common dso_local global i32 0, align 4
@IMEM_RDY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"IMEM Ready after CPU has refilled.\0A\00", align 1
@RT_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"<--FirmwareEnableCPU(): rtStatus(%#x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FirmwareEnableCPU(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load i32, i32* @RT_STATUS_SUCCESS, align 4
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 200, i32* %8, align 4
  %10 = load i32, i32* @COMP_FIRMWARE, align 4
  %11 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = load i32, i32* @SYS_CLKR, align 4
  %14 = call i32 @read_nic_byte(%struct.net_device* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = load i32, i32* @SYS_CLKR, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SYS_CPU_CLKSEL, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @write_nic_byte(%struct.net_device* %15, i32 %16, i32 %19)
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = load i32, i32* @SYS_FUNC_EN, align 4
  %23 = call i32 @read_nic_word(%struct.net_device* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = load i32, i32* @SYS_FUNC_EN, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @FEN_CPUEN, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @write_nic_word(%struct.net_device* %24, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %43, %1
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = load i32, i32* @TCR, align 4
  %33 = call i32 @read_nic_byte(%struct.net_device* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @IMEM_RDY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @COMP_FIRMWARE, align 4
  %40 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %47

41:                                               ; preds = %30
  %42 = call i32 @udelay(i32 100)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %8, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %30, label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @IMEM_RDY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @RT_STATUS_FAILURE, align 4
  store i32 %53, i32* %2, align 4
  br label %59

54:                                               ; preds = %47
  %55 = load i32, i32* @COMP_FIRMWARE, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %54, %52
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_word(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
