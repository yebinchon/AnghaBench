; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_get_physical_mapped_offset_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_get_physical_mapped_offset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_device = type { i64 }
%struct.sep_driver_get_mapped_offset_t = type { i64, i64 }

@.str = private unnamed_addr constant [67 x i8] c"SEP Driver:--------> sep_get_physical_mapped_offset_handler start\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"SEP Driver:bus_address is %08lx, offset is %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"SEP Driver:<-------- sep_get_physical_mapped_offset_handler end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sep_device*, i64)* @sep_get_physical_mapped_offset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_get_physical_mapped_offset_handler(%struct.sep_device* %0, i64 %1) #0 {
  %3 = alloca %struct.sep_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sep_driver_get_mapped_offset_t, align 8
  store %struct.sep_device* %0, %struct.sep_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = call i32 @dbg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* %4, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = call i32 @copy_from_user(%struct.sep_driver_get_mapped_offset_t* %6, i8* %9, i32 16)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %40

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.sep_driver_get_mapped_offset_t, %struct.sep_driver_get_mapped_offset_t* %6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sep_device*, %struct.sep_device** %3, align 8
  %18 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %40

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.sep_driver_get_mapped_offset_t, %struct.sep_driver_get_mapped_offset_t* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sep_device*, %struct.sep_device** %3, align 8
  %28 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = getelementptr inbounds %struct.sep_driver_get_mapped_offset_t, %struct.sep_driver_get_mapped_offset_t* %6, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.sep_driver_get_mapped_offset_t, %struct.sep_driver_get_mapped_offset_t* %6, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.sep_driver_get_mapped_offset_t, %struct.sep_driver_get_mapped_offset_t* %6, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @edbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %33, i64 %35)
  %37 = load i64, i64* %4, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @copy_to_user(i8* %38, %struct.sep_driver_get_mapped_offset_t* %6, i32 16)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %24, %21, %13
  %41 = call i32 @dbg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @copy_from_user(%struct.sep_driver_get_mapped_offset_t*, i8*, i32) #1

declare dso_local i32 @edbg(i8*, i64, i64) #1

declare dso_local i32 @copy_to_user(i8*, %struct.sep_driver_get_mapped_offset_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
