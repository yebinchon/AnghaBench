; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_prepare_input_output_dma_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_prepare_input_output_dma_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_device = type { i32, i32, i32, i32 }
%struct.sep_lli_entry_t = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"SEP Driver:--------> sep_prepare_input_output_dma_table start\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"SEP Driver: sep_lock_kernel_pages for input virtual buffer failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"SEP Driver: sep_lock_user_pages for input virtual buffer failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"SEP Driver: sep_lock_kernel_pages for output virtual buffer failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"SEP Driver: sep_lock_user_pages for output virtual buffer failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"sep->in_num_pages is %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"sep->out_num_pages is %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP is %x\0A\00", align 1
@SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [54 x i8] c"SEP Driver: sep_construct_dma_tables_from_lli failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"in_num_entries_ptr is %08lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"out_num_entries_ptr is %08lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"table_data_size_ptr is %08lx\0A\00", align 1
@.str.12 = private unnamed_addr constant [73 x i8] c"SEP Driver:<-------- sep_prepare_input_output_dma_table end result = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sep_device*, i64, i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i32)* @sep_prepare_input_output_dma_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_prepare_input_output_dma_table(%struct.sep_device* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64* %5, i64* %6, i64* %7, i64* %8, i64* %9, i32 %10) #0 {
  %12 = alloca %struct.sep_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.sep_lli_entry_t*, align 8
  %24 = alloca %struct.sep_lli_entry_t*, align 8
  %25 = alloca i32, align 4
  store %struct.sep_device* %0, %struct.sep_device** %12, align 8
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64* %5, i64** %17, align 8
  store i64* %6, i64** %18, align 8
  store i64* %7, i64** %19, align 8
  store i64* %8, i64** %20, align 8
  store i64* %9, i64** %21, align 8
  store i32 %10, i32* %22, align 4
  store i32 0, i32* %25, align 4
  %26 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %28 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %27, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %30 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %29, i32 0, i32 2
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %22, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %47

33:                                               ; preds = %11
  %34 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %38 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %37, i32 0, i32 1
  %39 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %40 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %39, i32 0, i32 3
  %41 = call i32 @sep_lock_kernel_pages(%struct.sep_device* %34, i64 %35, i64 %36, i32* %38, %struct.sep_lli_entry_t** %23, i32* %40)
  store i32 %41, i32* %25, align 4
  %42 = load i32, i32* %25, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  br label %139

46:                                               ; preds = %33
  br label %61

47:                                               ; preds = %11
  %48 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %52 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %51, i32 0, i32 1
  %53 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %54 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %53, i32 0, i32 3
  %55 = call i32 @sep_lock_user_pages(%struct.sep_device* %48, i64 %49, i64 %50, i32* %52, %struct.sep_lli_entry_t** %23, i32* %54)
  store i32 %55, i32* %25, align 4
  %56 = load i32, i32* %25, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  br label %139

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %46
  %62 = load i32, i32* %22, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %15, align 8
  %68 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %69 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %68, i32 0, i32 0
  %70 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %71 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %70, i32 0, i32 2
  %72 = call i32 @sep_lock_kernel_pages(%struct.sep_device* %65, i64 %66, i64 %67, i32* %69, %struct.sep_lli_entry_t** %24, i32* %71)
  store i32 %72, i32* %25, align 4
  %73 = load i32, i32* %25, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  br label %136

77:                                               ; preds = %64
  br label %92

78:                                               ; preds = %61
  %79 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %83 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %82, i32 0, i32 0
  %84 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %85 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %84, i32 0, i32 2
  %86 = call i32 @sep_lock_user_pages(%struct.sep_device* %79, i64 %80, i64 %81, i32* %83, %struct.sep_lli_entry_t** %24, i32* %85)
  store i32 %86, i32* %25, align 4
  %87 = load i32, i32* %25, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  br label %136

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91, %77
  %93 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %94 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %98 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP, align 4
  %102 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %101)
  %103 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %104 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %23, align 8
  %105 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %106 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %24, align 8
  %109 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %110 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i64, i64* %16, align 8
  %113 = load i64*, i64** %17, align 8
  %114 = load i64*, i64** %18, align 8
  %115 = load i64*, i64** %19, align 8
  %116 = load i64*, i64** %20, align 8
  %117 = load i64*, i64** %21, align 8
  %118 = call i32 @sep_construct_dma_tables_from_lli(%struct.sep_device* %103, %struct.sep_lli_entry_t* %104, i32 %107, %struct.sep_lli_entry_t* %108, i32 %111, i64 %112, i64* %113, i64* %114, i64* %115, i64* %116, i64* %117)
  store i32 %118, i32* %25, align 4
  %119 = load i32, i32* %25, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %92
  %122 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0))
  br label %133

123:                                              ; preds = %92
  %124 = load i64*, i64** %19, align 8
  %125 = load i64, i64* %124, align 8
  %126 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i64 %125)
  %127 = load i64*, i64** %20, align 8
  %128 = load i64, i64* %127, align 8
  %129 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i64 %128)
  %130 = load i64*, i64** %21, align 8
  %131 = load i64, i64* %130, align 8
  %132 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i64 %131)
  br label %133

133:                                              ; preds = %123, %121
  %134 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %24, align 8
  %135 = call i32 @kfree(%struct.sep_lli_entry_t* %134)
  br label %136

136:                                              ; preds = %133, %89, %75
  %137 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %23, align 8
  %138 = call i32 @kfree(%struct.sep_lli_entry_t* %137)
  br label %139

139:                                              ; preds = %136, %58, %44
  %140 = load i32, i32* %25, align 4
  %141 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.12, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* %25, align 4
  ret i32 %142
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @sep_lock_kernel_pages(%struct.sep_device*, i64, i64, i32*, %struct.sep_lli_entry_t**, i32*) #1

declare dso_local i32 @edbg(i8*, ...) #1

declare dso_local i32 @sep_lock_user_pages(%struct.sep_device*, i64, i64, i32*, %struct.sep_lli_entry_t**, i32*) #1

declare dso_local i32 @sep_construct_dma_tables_from_lli(%struct.sep_device*, %struct.sep_lli_entry_t*, i32, %struct.sep_lli_entry_t*, i32, i64, i64*, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @kfree(%struct.sep_lli_entry_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
