; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_core.c_lis3l02dq_read_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_core.c_lis3l02dq_read_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@LIS3L02DQ_REG_CTRL_1_ADDR = common dso_local global i32 0, align 4
@LIS3L02DQ_DEC_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"280\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"560\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"1120\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"4480\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @lis3l02dq_read_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3l02dq_read_frequency(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @LIS3L02DQ_REG_CTRL_1_ADDR, align 4
  %13 = call i32 @lis3l02dq_spi_read_reg_8(%struct.device* %11, i32 %12, i32* %10)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %37

18:                                               ; preds = %3
  %19 = load i32, i32* @LIS3L02DQ_DEC_MASK, align 4
  %20 = load i32, i32* %10, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %35 [
    i32 131, label %23
    i32 129, label %26
    i32 130, label %29
    i32 128, label %32
  ]

23:                                               ; preds = %18
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %9, align 4
  br label %35

26:                                               ; preds = %18
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %9, align 4
  br label %35

29:                                               ; preds = %18
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %31, i32* %9, align 4
  br label %35

32:                                               ; preds = %18
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %18, %32, %29, %26, %23
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %16
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @lis3l02dq_spi_read_reg_8(%struct.device*, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
