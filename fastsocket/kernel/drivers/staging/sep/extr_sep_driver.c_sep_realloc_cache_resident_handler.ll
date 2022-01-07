; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_realloc_cache_resident_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_realloc_cache_resident_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_device = type { i64, i64, i64 }
%struct.sep_driver_realloc_cache_resident_t = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [51 x i8] c"SEP Driver:command_args.new_shared_addr is %08llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"SEP Driver:command_args.new_base_addr is %08llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"SEP Driver:command_args.new_resident_addr is %08llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"SEP Driver:command_args.new_rar_addr is %08llx\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sep_device*, i64)* @sep_realloc_cache_resident_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_realloc_cache_resident_handler(%struct.sep_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sep_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sep_driver_realloc_cache_resident_t, align 8
  %7 = alloca i32, align 4
  store %struct.sep_device* %0, %struct.sep_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.sep_device*, %struct.sep_device** %4, align 8
  %9 = call i32 @sep_load_firmware(%struct.sep_device* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %75

14:                                               ; preds = %2
  %15 = load %struct.sep_device*, %struct.sep_device** %4, align 8
  %16 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.sep_driver_realloc_cache_resident_t, %struct.sep_driver_realloc_cache_resident_t* %6, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load %struct.sep_device*, %struct.sep_device** %4, align 8
  %20 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.sep_driver_realloc_cache_resident_t, %struct.sep_driver_realloc_cache_resident_t* %6, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %14
  %26 = load %struct.sep_device*, %struct.sep_device** %4, align 8
  %27 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.sep_driver_realloc_cache_resident_t, %struct.sep_driver_realloc_cache_resident_t* %6, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  br label %30

30:                                               ; preds = %25, %14
  %31 = load %struct.sep_device*, %struct.sep_device** %4, align 8
  %32 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.sep_driver_realloc_cache_resident_t, %struct.sep_driver_realloc_cache_resident_t* %6, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.sep_device*, %struct.sep_device** %4, align 8
  %39 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.sep_driver_realloc_cache_resident_t, %struct.sep_driver_realloc_cache_resident_t* %6, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %30
  %43 = load %struct.sep_device*, %struct.sep_device** %4, align 8
  %44 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.sep_driver_realloc_cache_resident_t, %struct.sep_driver_realloc_cache_resident_t* %6, i32 0, i32 1
  store i64 %45, i64* %46, align 8
  %47 = load %struct.sep_device*, %struct.sep_device** %4, align 8
  %48 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.sep_driver_realloc_cache_resident_t, %struct.sep_driver_realloc_cache_resident_t* %6, i32 0, i32 2
  store i64 %49, i64* %50, align 8
  %51 = load %struct.sep_device*, %struct.sep_device** %4, align 8
  %52 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.sep_driver_realloc_cache_resident_t, %struct.sep_driver_realloc_cache_resident_t* %6, i32 0, i32 3
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds %struct.sep_driver_realloc_cache_resident_t, %struct.sep_driver_realloc_cache_resident_t* %6, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @edbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = getelementptr inbounds %struct.sep_driver_realloc_cache_resident_t, %struct.sep_driver_realloc_cache_resident_t* %6, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @edbg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = getelementptr inbounds %struct.sep_driver_realloc_cache_resident_t, %struct.sep_driver_realloc_cache_resident_t* %6, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @edbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  %64 = getelementptr inbounds %struct.sep_driver_realloc_cache_resident_t, %struct.sep_driver_realloc_cache_resident_t* %6, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @edbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  %67 = load i64, i64* %5, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = call i64 @copy_to_user(i8* %68, %struct.sep_driver_realloc_cache_resident_t* %6, i32 32)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %42
  %72 = load i32, i32* @EFAULT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %75

74:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %71, %12
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @sep_load_firmware(%struct.sep_device*) #1

declare dso_local i32 @edbg(i8*, i64) #1

declare dso_local i64 @copy_to_user(i8*, %struct.sep_driver_realloc_cache_resident_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
