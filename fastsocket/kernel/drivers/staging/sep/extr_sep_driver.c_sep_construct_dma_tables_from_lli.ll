; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_construct_dma_tables_from_lli.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_construct_dma_tables_from_lli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_device = type { i8* }
%struct.sep_lli_entry_t = type { i64, i8* }

@.str = private unnamed_addr constant [62 x i8] c"SEP Driver:--------> sep_construct_dma_tables_from_lli start\0A\00", align 1
@SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES = common dso_local global i32 0, align 4
@SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"SEP Driver:in_table_data_size is %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"SEP Driver:out_table_data_size is %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"SEP Driver:table_data_size is %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"SEP Driver:output lli_table_in_ptr is %08lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"SEP Driver:output lli_table_out_ptr is %08lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"SEP Driver:output num_entries_out_table is %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"SEP Driver:output info_in_entry_ptr is %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"SEP Driver:output info_out_entry_ptr is %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"SEP Driver:<-------- sep_construct_dma_tables_from_lli end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sep_device*, %struct.sep_lli_entry_t*, i64, %struct.sep_lli_entry_t*, i64, i64, i64*, i64*, i64*, i64*, i64*)* @sep_construct_dma_tables_from_lli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_construct_dma_tables_from_lli(%struct.sep_device* %0, %struct.sep_lli_entry_t* %1, i64 %2, %struct.sep_lli_entry_t* %3, i64 %4, i64 %5, i64* %6, i64* %7, i64* %8, i64* %9, i64* %10) #0 {
  %12 = alloca %struct.sep_device*, align 8
  %13 = alloca %struct.sep_lli_entry_t*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sep_lli_entry_t*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.sep_lli_entry_t*, align 8
  %25 = alloca %struct.sep_lli_entry_t*, align 8
  %26 = alloca %struct.sep_lli_entry_t*, align 8
  %27 = alloca %struct.sep_lli_entry_t*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  store %struct.sep_device* %0, %struct.sep_device** %12, align 8
  store %struct.sep_lli_entry_t* %1, %struct.sep_lli_entry_t** %13, align 8
  store i64 %2, i64* %14, align 8
  store %struct.sep_lli_entry_t* %3, %struct.sep_lli_entry_t** %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i64* %6, i64** %18, align 8
  store i64* %7, i64** %19, align 8
  store i64* %8, i64** %20, align 8
  store i64* %9, i64** %21, align 8
  store i64* %10, i64** %22, align 8
  %36 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %38 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* @SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %39, i64 %41
  store i8* %42, i8** %23, align 8
  store i64 0, i64* %28, align 8
  store i64 0, i64* %29, align 8
  store i64 1, i64* %32, align 8
  store %struct.sep_lli_entry_t* null, %struct.sep_lli_entry_t** %26, align 8
  store %struct.sep_lli_entry_t* null, %struct.sep_lli_entry_t** %27, align 8
  br label %43

43:                                               ; preds = %154, %11
  %44 = load i64, i64* %28, align 8
  %45 = load i64, i64* %14, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %171

47:                                               ; preds = %43
  %48 = load i8*, i8** %23, align 8
  %49 = bitcast i8* %48 to %struct.sep_lli_entry_t*
  store %struct.sep_lli_entry_t* %49, %struct.sep_lli_entry_t** %24, align 8
  %50 = load i32, i32* @SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 16, %51
  %53 = load i8*, i8** %23, align 8
  %54 = getelementptr i8, i8* %53, i64 %52
  store i8* %54, i8** %23, align 8
  %55 = load i8*, i8** %23, align 8
  %56 = bitcast i8* %55 to %struct.sep_lli_entry_t*
  store %struct.sep_lli_entry_t* %56, %struct.sep_lli_entry_t** %25, align 8
  %57 = load i32, i32* @SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 16, %58
  %60 = load i8*, i8** %23, align 8
  %61 = getelementptr i8, i8* %60, i64 %59
  store i8* %61, i8** %23, align 8
  %62 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %13, align 8
  %63 = load i64, i64* %28, align 8
  %64 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %62, i64 %63
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* %28, align 8
  %67 = sub i64 %65, %66
  %68 = call i64 @sep_calculate_lli_table_max_size(%struct.sep_lli_entry_t* %64, i64 %67)
  store i64 %68, i64* %30, align 8
  %69 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %15, align 8
  %70 = load i64, i64* %29, align 8
  %71 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %69, i64 %70
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* %29, align 8
  %74 = sub i64 %72, %73
  %75 = call i64 @sep_calculate_lli_table_max_size(%struct.sep_lli_entry_t* %71, i64 %74)
  store i64 %75, i64* %31, align 8
  %76 = load i64, i64* %30, align 8
  %77 = call i32 @edbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  %78 = load i64, i64* %31, align 8
  %79 = call i32 @edbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %78)
  %80 = load i64, i64* %30, align 8
  store i64 %80, i64* %33, align 8
  %81 = load i64, i64* %33, align 8
  %82 = load i64, i64* %31, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %47
  %85 = load i64, i64* %31, align 8
  store i64 %85, i64* %33, align 8
  br label %86

86:                                               ; preds = %84, %47
  %87 = load i64, i64* %33, align 8
  %88 = load i64, i64* %17, align 8
  %89 = udiv i64 %87, %88
  %90 = load i64, i64* %17, align 8
  %91 = mul i64 %89, %90
  store i64 %91, i64* %33, align 8
  %92 = load i64, i64* %33, align 8
  %93 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %92)
  %94 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %13, align 8
  %95 = load i64, i64* %28, align 8
  %96 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %94, i64 %95
  %97 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %24, align 8
  %98 = load i64, i64* %33, align 8
  %99 = call i32 @sep_build_lli_table(%struct.sep_lli_entry_t* %96, %struct.sep_lli_entry_t* %97, i64* %28, i64* %34, i64 %98)
  %100 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %15, align 8
  %101 = load i64, i64* %29, align 8
  %102 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %100, i64 %101
  %103 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %25, align 8
  %104 = load i64, i64* %33, align 8
  %105 = call i32 @sep_build_lli_table(%struct.sep_lli_entry_t* %102, %struct.sep_lli_entry_t* %103, i64* %29, i64* %35, i64 %104)
  %106 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %26, align 8
  %107 = icmp eq %struct.sep_lli_entry_t* %106, null
  br i1 %107, label %108, label %131

108:                                              ; preds = %86
  %109 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %110 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %24, align 8
  %111 = call i8* @sep_shared_virt_to_bus(%struct.sep_device* %109, %struct.sep_lli_entry_t* %110)
  %112 = ptrtoint i8* %111 to i64
  %113 = load i64*, i64** %18, align 8
  store i64 %112, i64* %113, align 8
  %114 = load i64, i64* %34, align 8
  %115 = load i64*, i64** %20, align 8
  store i64 %114, i64* %115, align 8
  %116 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %117 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %25, align 8
  %118 = call i8* @sep_shared_virt_to_bus(%struct.sep_device* %116, %struct.sep_lli_entry_t* %117)
  %119 = ptrtoint i8* %118 to i64
  %120 = load i64*, i64** %19, align 8
  store i64 %119, i64* %120, align 8
  %121 = load i64, i64* %35, align 8
  %122 = load i64*, i64** %21, align 8
  store i64 %121, i64* %122, align 8
  %123 = load i64, i64* %33, align 8
  %124 = load i64*, i64** %22, align 8
  store i64 %123, i64* %124, align 8
  %125 = load i64*, i64** %18, align 8
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @edbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %126)
  %128 = load i64*, i64** %19, align 8
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @edbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i64 %129)
  br label %154

131:                                              ; preds = %86
  %132 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %133 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %24, align 8
  %134 = call i8* @sep_shared_virt_to_bus(%struct.sep_device* %132, %struct.sep_lli_entry_t* %133)
  %135 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %26, align 8
  %136 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  %137 = load i64, i64* %34, align 8
  %138 = shl i64 %137, 24
  %139 = load i64, i64* %33, align 8
  %140 = or i64 %138, %139
  %141 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %26, align 8
  %142 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %144 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %25, align 8
  %145 = call i8* @sep_shared_virt_to_bus(%struct.sep_device* %143, %struct.sep_lli_entry_t* %144)
  %146 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %27, align 8
  %147 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %146, i32 0, i32 1
  store i8* %145, i8** %147, align 8
  %148 = load i64, i64* %35, align 8
  %149 = shl i64 %148, 24
  %150 = load i64, i64* %33, align 8
  %151 = or i64 %149, %150
  %152 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %27, align 8
  %153 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %131, %108
  %155 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %24, align 8
  %156 = load i64, i64* %34, align 8
  %157 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %155, i64 %156
  %158 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %157, i64 -1
  store %struct.sep_lli_entry_t* %158, %struct.sep_lli_entry_t** %26, align 8
  %159 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %25, align 8
  %160 = load i64, i64* %35, align 8
  %161 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %159, i64 %160
  %162 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %161, i64 -1
  store %struct.sep_lli_entry_t* %162, %struct.sep_lli_entry_t** %27, align 8
  %163 = load i64, i64* %35, align 8
  %164 = call i32 @edbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i64 %163)
  %165 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %26, align 8
  %166 = ptrtoint %struct.sep_lli_entry_t* %165 to i64
  %167 = call i32 @edbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i64 %166)
  %168 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %27, align 8
  %169 = ptrtoint %struct.sep_lli_entry_t* %168 to i64
  %170 = call i32 @edbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i64 %169)
  br label %43

171:                                              ; preds = %43
  %172 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %173 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %174 = load i64*, i64** %18, align 8
  %175 = load i64, i64* %174, align 8
  %176 = call i64 @sep_shared_bus_to_virt(%struct.sep_device* %173, i64 %175)
  %177 = inttoptr i64 %176 to %struct.sep_lli_entry_t*
  %178 = load i64*, i64** %20, align 8
  %179 = load i64, i64* %178, align 8
  %180 = load i64*, i64** %22, align 8
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @sep_debug_print_lli_tables(%struct.sep_device* %172, %struct.sep_lli_entry_t* %177, i64 %179, i64 %181)
  %183 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %184 = load %struct.sep_device*, %struct.sep_device** %12, align 8
  %185 = load i64*, i64** %19, align 8
  %186 = load i64, i64* %185, align 8
  %187 = call i64 @sep_shared_bus_to_virt(%struct.sep_device* %184, i64 %186)
  %188 = inttoptr i64 %187 to %struct.sep_lli_entry_t*
  %189 = load i64*, i64** %21, align 8
  %190 = load i64, i64* %189, align 8
  %191 = load i64*, i64** %22, align 8
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @sep_debug_print_lli_tables(%struct.sep_device* %183, %struct.sep_lli_entry_t* %188, i64 %190, i64 %192)
  %194 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i64 @sep_calculate_lli_table_max_size(%struct.sep_lli_entry_t*, i64) #1

declare dso_local i32 @edbg(i8*, i64) #1

declare dso_local i32 @sep_build_lli_table(%struct.sep_lli_entry_t*, %struct.sep_lli_entry_t*, i64*, i64*, i64) #1

declare dso_local i8* @sep_shared_virt_to_bus(%struct.sep_device*, %struct.sep_lli_entry_t*) #1

declare dso_local i32 @sep_debug_print_lli_tables(%struct.sep_device*, %struct.sep_lli_entry_t*, i64, i64) #1

declare dso_local i64 @sep_shared_bus_to_virt(%struct.sep_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
