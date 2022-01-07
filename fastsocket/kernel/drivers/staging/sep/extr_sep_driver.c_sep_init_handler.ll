; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_init_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_init_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_device = type { i32 }
%struct.sep_driver_init_t = type { i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"SEP Driver:--------> sep_init_handler start\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"SEP Driver:--------> sep_init_handler - finished copy_from_user \0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"SEP Driver:--------> sep_init_handler - finished sep_configure_dma_burst \0A\00", align 1
@HW_SRAM_ADDR_REG_ADDR = common dso_local global i32 0, align 4
@HW_CC_SRAM_BASE_ADDRESS = common dso_local global i32 0, align 4
@HW_SRAM_DATA_REG_ADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"SEP Driver:message_word is %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c"SEP Driver:--------> sep_init_handler - finished getting messages from user space\0A\00", align 1
@HW_HOST_HOST_SEP_GPR0_REG_ADDR = common dso_local global i32 0, align 4
@HW_HOST_SEP_HOST_GPR3_REG_ADDR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [84 x i8] c"SEP Driver:--------> sep_init_handler - finished waiting for reg_val & 0xFFFFFFFD \0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"SEP Driver:init failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"SEP Driver:sw monitor is %lu\0A\00", align 1
@HW_HOST_SEP_HOST_GPR0_REG_ADDR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"SEP Driver:error is %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"SEP Driver:<-------- sep_init_handler end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sep_device*, i64)* @sep_init_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_init_handler(%struct.sep_device* %0, i64 %1) #0 {
  %3 = alloca %struct.sep_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.sep_driver_init_t, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.sep_device* %0, %struct.sep_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = call i32 @dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  %12 = load i64, i64* %4, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = call i64 @copy_from_user(%struct.sep_driver_init_t* %7, i8* %13, i32 16)
  store i64 %14, i64* %9, align 8
  %15 = call i32 @dbg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %81

19:                                               ; preds = %2
  %20 = call i32 @dbg(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.sep_driver_init_t, %struct.sep_driver_init_t* %7, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i64*
  store i64* %23, i64** %6, align 8
  %24 = load %struct.sep_device*, %struct.sep_device** %3, align 8
  %25 = load i32, i32* @HW_SRAM_ADDR_REG_ADDR, align 4
  %26 = load i32, i32* @HW_CC_SRAM_BASE_ADDRESS, align 4
  %27 = call i32 @sep_write_reg(%struct.sep_device* %24, i32 %25, i32 %26)
  store i64 0, i64* %8, align 8
  br label %28

28:                                               ; preds = %46, %19
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.sep_driver_init_t, %struct.sep_driver_init_t* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load i64, i64* %5, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = call i32 @get_user(i64 %34, i64* %35)
  %37 = load %struct.sep_device*, %struct.sep_device** %3, align 8
  %38 = load i32, i32* @HW_SRAM_DATA_REG_ADDR, align 4
  %39 = load i64, i64* %5, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @sep_write_reg(%struct.sep_device* %37, i32 %38, i32 %40)
  %42 = load i64, i64* %5, align 8
  %43 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %42)
  %44 = load %struct.sep_device*, %struct.sep_device** %3, align 8
  %45 = call i32 @sep_wait_sram_write(%struct.sep_device* %44)
  br label %46

46:                                               ; preds = %33
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %6, align 8
  br label %28

51:                                               ; preds = %28
  %52 = call i32 @dbg(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.sep_device*, %struct.sep_device** %3, align 8
  %54 = load i32, i32* @HW_HOST_HOST_SEP_GPR0_REG_ADDR, align 4
  %55 = call i32 @sep_write_reg(%struct.sep_device* %53, i32 %54, i32 1)
  br label %56

56:                                               ; preds = %60, %51
  %57 = load %struct.sep_device*, %struct.sep_device** %3, align 8
  %58 = load i32, i32* @HW_HOST_SEP_HOST_GPR3_REG_ADDR, align 4
  %59 = call i64 @sep_read_reg(%struct.sep_device* %57, i32 %58)
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %10, align 8
  %62 = and i64 %61, 4294967293
  %63 = icmp ne i64 %62, 0
  %64 = xor i1 %63, true
  br i1 %64, label %56, label %65

65:                                               ; preds = %60
  %66 = call i32 @dbg(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i64, i64* %10, align 8
  %68 = icmp eq i64 %67, 1
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %71 = load %struct.sep_device*, %struct.sep_device** %3, align 8
  %72 = call i64 @sep_read_reg(%struct.sep_device* %71, i32 32864)
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %73)
  %75 = load %struct.sep_device*, %struct.sep_device** %3, align 8
  %76 = load i32, i32* @HW_HOST_SEP_HOST_GPR0_REG_ADDR, align 4
  %77 = call i64 @sep_read_reg(%struct.sep_device* %75, i32 %76)
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %69, %65
  br label %81

81:                                               ; preds = %80, %18
  %82 = call i32 @dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %83 = load i64, i64* %9, align 8
  %84 = trunc i64 %83 to i32
  ret i32 %84
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i64 @copy_from_user(%struct.sep_driver_init_t*, i8*, i32) #1

declare dso_local i32 @sep_write_reg(%struct.sep_device*, i32, i32) #1

declare dso_local i32 @get_user(i64, i64*) #1

declare dso_local i32 @edbg(i8*, ...) #1

declare dso_local i32 @sep_wait_sram_write(%struct.sep_device*) #1

declare dso_local i64 @sep_read_reg(%struct.sep_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
