; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_start_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_start_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_device = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"SEP Driver:--------> sep_start_handler start\0A\00", align 1
@HW_HOST_SEP_HOST_GPR3_REG_ADDR = common dso_local global i32 0, align 4
@HW_HOST_SEP_HOST_GPR0_REG_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"SEP Driver:<-------- sep_start_handler end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sep_device*)* @sep_start_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_start_handler(%struct.sep_device* %0) #0 {
  %2 = alloca %struct.sep_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.sep_device* %0, %struct.sep_device** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = call i32 @dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %10, %1
  %7 = load %struct.sep_device*, %struct.sep_device** %2, align 8
  %8 = load i32, i32* @HW_HOST_SEP_HOST_GPR3_REG_ADDR, align 4
  %9 = call i64 @sep_read_reg(%struct.sep_device* %7, i32 %8)
  store i64 %9, i64* %3, align 8
  br label %10

10:                                               ; preds = %6
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %6, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* %3, align 8
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.sep_device*, %struct.sep_device** %2, align 8
  %19 = load i32, i32* @HW_HOST_SEP_HOST_GPR0_REG_ADDR, align 4
  %20 = call i64 @sep_read_reg(%struct.sep_device* %18, i32 %19)
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %17, %14
  %22 = call i32 @dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i64, i64* %4, align 8
  %24 = trunc i64 %23 to i32
  ret i32 %24
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i64 @sep_read_reg(%struct.sep_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
