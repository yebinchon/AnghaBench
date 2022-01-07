; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_read_from_data_pool_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_read_from_data_pool_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_device = type { i8* }
%struct.sep_driver_write_t = type { i32, i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"SEP Driver:--------> sep_read_from_data_pool_handler start\0A\00", align 1
@SEP_DRIVER_DATA_POOL_AREA_OFFSET_IN_BYTES = common dso_local global i32 0, align 4
@SEP_DRIVER_DATA_POOL_SHARED_AREA_SIZE_IN_BYTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"SEP Driver:<-------- sep_read_from_data_pool_handler end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sep_device*, i64)* @sep_read_from_data_pool_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_read_from_data_pool_handler(%struct.sep_device* %0, i64 %1) #0 {
  %3 = alloca %struct.sep_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.sep_device* %0, %struct.sep_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = call i32 @dbg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = inttoptr i64 %13 to %struct.sep_driver_write_t*
  %15 = getelementptr inbounds %struct.sep_driver_write_t, %struct.sep_driver_write_t* %14, i32 0, i32 2
  %16 = call i32 @get_user(i64 %12, i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %66

20:                                               ; preds = %2
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %4, align 8
  %23 = inttoptr i64 %22 to %struct.sep_driver_write_t*
  %24 = getelementptr inbounds %struct.sep_driver_write_t, %struct.sep_driver_write_t* %23, i32 0, i32 1
  %25 = call i32 @get_user(i64 %21, i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %66

29:                                               ; preds = %20
  %30 = load i64, i64* %7, align 8
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %4, align 8
  %34 = inttoptr i64 %33 to %struct.sep_driver_write_t*
  %35 = getelementptr inbounds %struct.sep_driver_write_t, %struct.sep_driver_write_t* %34, i32 0, i32 0
  %36 = call i32 @get_user(i64 %32, i32* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %66

40:                                               ; preds = %29
  %41 = load %struct.sep_device*, %struct.sep_device** %3, align 8
  %42 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @SEP_DRIVER_DATA_POOL_AREA_OFFSET_IN_BYTES, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr i8, i8* %43, i64 %45
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = icmp ult i8* %47, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %40
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* @SEP_DRIVER_DATA_POOL_SHARED_AREA_SIZE_IN_BYTES, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr i8, i8* %52, i64 %54
  %56 = icmp ugt i8* %51, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50, %40
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %66

60:                                               ; preds = %50
  %61 = load i64, i64* %6, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @copy_to_user(i8* %62, i8* %63, i64 %64)
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %60, %57, %39, %28, %19
  %67 = call i32 @dbg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @get_user(i64, i32*) #1

declare dso_local i32 @copy_to_user(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
