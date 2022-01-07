; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_create_sync_dma_tables_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_create_sync_dma_tables_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_device = type { i32 }
%struct.sep_driver_build_sync_table_t = type { i32, i32, i32, i32, i64, i64, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [63 x i8] c"SEP Driver:--------> sep_create_sync_dma_tables_handler start\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"app_in_address is %08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"app_out_address is %08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"data_size is %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"block_size is %lu\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"SEP Driver:<-------- sep_create_sync_dma_tables_handler end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sep_device*, i64)* @sep_create_sync_dma_tables_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_create_sync_dma_tables_handler(%struct.sep_device* %0, i64 %1) #0 {
  %3 = alloca %struct.sep_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sep_driver_build_sync_table_t, align 8
  store %struct.sep_device* %0, %struct.sep_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = call i32 @dbg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* %4, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = call i32 @copy_from_user(%struct.sep_driver_build_sync_table_t* %6, i8* %9, i32 56)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %76

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @edbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %16)
  %18 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 9
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @edbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %19)
  %21 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @edbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %22)
  %24 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @edbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %25)
  %27 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 9
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %14
  %31 = load %struct.sep_device*, %struct.sep_device** %3, align 8
  %32 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 9
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 3
  %41 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 8
  %42 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 2
  %43 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 7
  %44 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 1
  %45 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @sep_prepare_input_output_dma_table(%struct.sep_device* %31, i64 %33, i64 %35, i64 %37, i64 %39, i32* %40, i32* %41, i32* %42, i32* %43, i32* %44, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %62

48:                                               ; preds = %14
  %49 = load %struct.sep_device*, %struct.sep_device** %3, align 8
  %50 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 3
  %57 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 2
  %58 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 1
  %59 = getelementptr inbounds %struct.sep_driver_build_sync_table_t, %struct.sep_driver_build_sync_table_t* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @sep_prepare_input_dma_table(%struct.sep_device* %49, i64 %51, i64 %53, i64 %55, i32* %56, i32* %57, i32* %58, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %48, %30
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %76

66:                                               ; preds = %62
  %67 = load i64, i64* %4, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = bitcast %struct.sep_driver_build_sync_table_t* %6 to i8*
  %70 = call i64 @copy_to_user(i8* %68, i8* %69, i32 56)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @EFAULT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %66
  br label %76

76:                                               ; preds = %75, %65, %13
  %77 = call i32 @dbg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @copy_from_user(%struct.sep_driver_build_sync_table_t*, i8*, i32) #1

declare dso_local i32 @edbg(i8*, i64) #1

declare dso_local i32 @sep_prepare_input_output_dma_table(%struct.sep_device*, i64, i64, i64, i64, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @sep_prepare_input_dma_table(%struct.sep_device*, i64, i64, i64, i32*, i32*, i32*, i32) #1

declare dso_local i64 @copy_to_user(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
