; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_prepare_input_dma_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_prepare_input_dma_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_device = type { i64, i64, i8*, i32 }
%struct.sep_lli_entry_t = type { i64, i64 }

@.str = private unnamed_addr constant [56 x i8] c"SEP Driver:--------> sep_prepare_input_dma_table start\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"SEP Driver:data_size is %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"SEP Driver:block_size is %lu\0A\00", align 1
@SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"SEP Driver:output sep->in_num_pages is %lu\0A\00", align 1
@SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"SEP Driver:output table_data_size is %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"SEP Driver:output lli_table_in_ptr is %08lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"SEP Driver:<-------- sep_prepare_input_dma_table end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sep_device*, i64, i64, i64, i64*, i64*, i64*, i32)* @sep_prepare_input_dma_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_prepare_input_dma_table(%struct.sep_device* %0, i64 %1, i64 %2, i64 %3, i64* %4, i64* %5, i64* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sep_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.sep_lli_entry_t*, align 8
  %19 = alloca %struct.sep_lli_entry_t*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.sep_lli_entry_t*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  store %struct.sep_device* %0, %struct.sep_device** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64* %4, i64** %14, align 8
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32 %7, i32* %17, align 4
  %27 = call i32 @dbg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @edbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @edbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  %32 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %33 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %32, i32 0, i32 3
  store i32 0, i32* %33, align 8
  %34 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %35 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* %12, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %8
  %39 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %40 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* @SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES, align 8
  %43 = getelementptr i8, i8* %41, i64 %42
  %44 = bitcast i8* %43 to %struct.sep_lli_entry_t*
  store %struct.sep_lli_entry_t* %44, %struct.sep_lli_entry_t** %22, align 8
  %45 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %46 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = ptrtoint i8* %47 to i64
  %49 = load i64, i64* @SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES, align 8
  %50 = add i64 %48, %49
  %51 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %22, align 8
  %52 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %22, align 8
  %54 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %22, align 8
  %56 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %55, i32 1
  store %struct.sep_lli_entry_t* %56, %struct.sep_lli_entry_t** %22, align 8
  %57 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %22, align 8
  %58 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %57, i32 0, i32 0
  store i64 4294967295, i64* %58, align 8
  %59 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %22, align 8
  %60 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %62 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i64*, i64** %14, align 8
  store i64 %65, i64* %66, align 8
  %67 = load i64*, i64** %15, align 8
  store i64 2, i64* %67, align 8
  %68 = load i64*, i64** %16, align 8
  store i64 0, i64* %68, align 8
  br label %188

69:                                               ; preds = %8
  %70 = load i32, i32* %17, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %77 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %76, i32 0, i32 0
  %78 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %79 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %78, i32 0, i32 3
  %80 = call i64 @sep_lock_kernel_pages(%struct.sep_device* %73, i64 %74, i64 %75, i64* %77, %struct.sep_lli_entry_t** %19, i32* %79)
  store i64 %80, i64* %26, align 8
  br label %90

81:                                               ; preds = %69
  %82 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %86 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %85, i32 0, i32 0
  %87 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %88 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %87, i32 0, i32 3
  %89 = call i64 @sep_lock_user_pages(%struct.sep_device* %82, i64 %83, i64 %84, i64* %86, %struct.sep_lli_entry_t** %19, i32* %88)
  store i64 %89, i64* %26, align 8
  br label %90

90:                                               ; preds = %81, %72
  %91 = load i64, i64* %26, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i64, i64* %26, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %9, align 4
  br label %190

96:                                               ; preds = %90
  %97 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %98 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @edbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %99)
  store i64 0, i64* %20, align 8
  store %struct.sep_lli_entry_t* null, %struct.sep_lli_entry_t** %18, align 8
  %101 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %102 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %21, align 8
  %104 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %105 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = load i64, i64* @SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES, align 8
  %108 = getelementptr i8, i8* %106, i64 %107
  store i8* %108, i8** %25, align 8
  br label %109

109:                                              ; preds = %169, %96
  %110 = load i64, i64* %20, align 8
  %111 = load i64, i64* %21, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %174

113:                                              ; preds = %109
  %114 = load i8*, i8** %25, align 8
  %115 = bitcast i8* %114 to %struct.sep_lli_entry_t*
  store %struct.sep_lli_entry_t* %115, %struct.sep_lli_entry_t** %22, align 8
  %116 = load i32, i32* @SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 16, %117
  %119 = load i8*, i8** %25, align 8
  %120 = getelementptr i8, i8* %119, i64 %118
  store i8* %120, i8** %25, align 8
  %121 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %19, align 8
  %122 = load i64, i64* %20, align 8
  %123 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %121, i64 %122
  %124 = load i64, i64* %21, align 8
  %125 = load i64, i64* %20, align 8
  %126 = sub i64 %124, %125
  %127 = call i64 @sep_calculate_lli_table_max_size(%struct.sep_lli_entry_t* %123, i64 %126)
  store i64 %127, i64* %23, align 8
  %128 = load i64, i64* %23, align 8
  %129 = load i64, i64* %13, align 8
  %130 = udiv i64 %128, %129
  %131 = load i64, i64* %13, align 8
  %132 = mul i64 %130, %131
  store i64 %132, i64* %23, align 8
  %133 = load i64, i64* %23, align 8
  %134 = call i32 @edbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %133)
  %135 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %19, align 8
  %136 = load i64, i64* %20, align 8
  %137 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %135, i64 %136
  %138 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %22, align 8
  %139 = load i64, i64* %23, align 8
  %140 = call i32 @sep_build_lli_table(%struct.sep_lli_entry_t* %137, %struct.sep_lli_entry_t* %138, i64* %20, i64* %24, i64 %139)
  %141 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %18, align 8
  %142 = icmp eq %struct.sep_lli_entry_t* %141, null
  br i1 %142, label %143, label %156

143:                                              ; preds = %113
  %144 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %145 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %22, align 8
  %146 = call i8* @sep_shared_virt_to_bus(%struct.sep_device* %144, %struct.sep_lli_entry_t* %145)
  %147 = ptrtoint i8* %146 to i64
  %148 = load i64*, i64** %14, align 8
  store i64 %147, i64* %148, align 8
  %149 = load i64, i64* %24, align 8
  %150 = load i64*, i64** %15, align 8
  store i64 %149, i64* %150, align 8
  %151 = load i64, i64* %23, align 8
  %152 = load i64*, i64** %16, align 8
  store i64 %151, i64* %152, align 8
  %153 = load i64*, i64** %14, align 8
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @edbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %154)
  br label %169

156:                                              ; preds = %113
  %157 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %158 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %22, align 8
  %159 = call i8* @sep_shared_virt_to_bus(%struct.sep_device* %157, %struct.sep_lli_entry_t* %158)
  %160 = ptrtoint i8* %159 to i64
  %161 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %18, align 8
  %162 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load i64, i64* %24, align 8
  %164 = shl i64 %163, 24
  %165 = load i64, i64* %23, align 8
  %166 = or i64 %164, %165
  %167 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %18, align 8
  %168 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %156, %143
  %170 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %22, align 8
  %171 = load i64, i64* %24, align 8
  %172 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %170, i64 %171
  %173 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %172, i64 -1
  store %struct.sep_lli_entry_t* %173, %struct.sep_lli_entry_t** %18, align 8
  br label %109

174:                                              ; preds = %109
  %175 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %176 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  %177 = load i64*, i64** %14, align 8
  %178 = load i64, i64* %177, align 8
  %179 = call i64 @sep_shared_bus_to_virt(%struct.sep_device* %176, i64 %178)
  %180 = inttoptr i64 %179 to %struct.sep_lli_entry_t*
  %181 = load i64*, i64** %15, align 8
  %182 = load i64, i64* %181, align 8
  %183 = load i64*, i64** %16, align 8
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @sep_debug_print_lli_tables(%struct.sep_device* %175, %struct.sep_lli_entry_t* %180, i64 %182, i64 %184)
  %186 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %19, align 8
  %187 = call i32 @kfree(%struct.sep_lli_entry_t* %186)
  br label %188

188:                                              ; preds = %174, %38
  %189 = call i32 @dbg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %190

190:                                              ; preds = %188, %93
  %191 = load i32, i32* %9, align 4
  ret i32 %191
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @edbg(i8*, i64) #1

declare dso_local i64 @sep_lock_kernel_pages(%struct.sep_device*, i64, i64, i64*, %struct.sep_lli_entry_t**, i32*) #1

declare dso_local i64 @sep_lock_user_pages(%struct.sep_device*, i64, i64, i64*, %struct.sep_lli_entry_t**, i32*) #1

declare dso_local i64 @sep_calculate_lli_table_max_size(%struct.sep_lli_entry_t*, i64) #1

declare dso_local i32 @sep_build_lli_table(%struct.sep_lli_entry_t*, %struct.sep_lli_entry_t*, i64*, i64*, i64) #1

declare dso_local i8* @sep_shared_virt_to_bus(%struct.sep_device*, %struct.sep_lli_entry_t*) #1

declare dso_local i32 @sep_debug_print_lli_tables(%struct.sep_device*, %struct.sep_lli_entry_t*, i64, i64) #1

declare dso_local i64 @sep_shared_bus_to_virt(%struct.sep_device*, i64) #1

declare dso_local i32 @kfree(%struct.sep_lli_entry_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
