; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_lock_kernel_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_lock_kernel_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_device = type { i32 }
%struct.sep_lli_entry_t = type { i64, i64 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"SEP Driver:--------> sep_lock_kernel_pages start\0A\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"SEP Driver: kernel_virt_addr is %08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"SEP Driver: data_size is %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"SEP Driver: start_page is %lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"SEP Driver: end_page is %lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"SEP Driver: num_pages is %lu\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"SEP Driver: kmalloc for lli_array failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [72 x i8] c"lli_array[0].physical_address is %08lx, lli_array[0].block_size is %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [76 x i8] c"lli_array[%lu].physical_address is %08lx, lli_array[%lu].block_size is %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"app_virt_addr is %08lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"data_size is %lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"SEP Driver:<-------- sep_lock_kernel_pages end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sep_device*, i64, i64, i64*, %struct.sep_lli_entry_t**, %struct.page***)* @sep_lock_kernel_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_lock_kernel_pages(%struct.sep_device* %0, i64 %1, i64 %2, i64* %3, %struct.sep_lli_entry_t** %4, %struct.page*** %5) #0 {
  %7 = alloca %struct.sep_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.sep_lli_entry_t**, align 8
  %12 = alloca %struct.page***, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.sep_lli_entry_t*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.sep_device* %0, %struct.sep_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.sep_lli_entry_t** %4, %struct.sep_lli_entry_t*** %11, align 8
  store %struct.page*** %5, %struct.page**** %12, align 8
  store i32 0, i32* %13, align 4
  %20 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = add i64 %21, %22
  %24 = sub i64 %23, 1
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @PAGE_SHIFT, align 8
  %29 = lshr i64 %27, %28
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* %15, align 8
  %32 = sub i64 %30, %31
  %33 = add i64 %32, 1
  store i64 %33, i64* %16, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i64, i64* %9, align 8
  %37 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* %15, align 8
  %39 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  %40 = load i64, i64* %14, align 8
  %41 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %40)
  %42 = load i64, i64* %16, align 8
  %43 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* %16, align 8
  %45 = mul i64 16, %44
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call %struct.sep_lli_entry_t* @kmalloc(i32 %46, i32 %47)
  store %struct.sep_lli_entry_t* %48, %struct.sep_lli_entry_t** %17, align 8
  %49 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %50 = icmp ne %struct.sep_lli_entry_t* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %6
  %52 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %13, align 4
  br label %190

55:                                               ; preds = %6
  %56 = load i64, i64* %8, align 8
  %57 = inttoptr i64 %56 to i64*
  %58 = call i64 @virt_to_phys(i64* %57)
  %59 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %60 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %59, i64 0
  %61 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load i64, i64* @PAGE_SIZE, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @PAGE_MASK, align 8
  %65 = xor i64 %64, -1
  %66 = and i64 %63, %65
  %67 = sub i64 %62, %66
  %68 = load i64, i64* %9, align 8
  %69 = icmp uge i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %55
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %73 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %72, i64 0
  %74 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %73, i32 0, i32 1
  store i64 %71, i64* %74, align 8
  br label %85

75:                                               ; preds = %55
  %76 = load i64, i64* @PAGE_SIZE, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @PAGE_MASK, align 8
  %79 = xor i64 %78, -1
  %80 = and i64 %77, %79
  %81 = sub i64 %76, %80
  %82 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %83 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %82, i64 0
  %84 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %83, i32 0, i32 1
  store i64 %81, i64* %84, align 8
  br label %85

85:                                               ; preds = %75, %70
  %86 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %87 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %86, i64 0
  %88 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %91 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %90, i64 0
  %92 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0), i64 %89, i64 %93)
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* @PAGE_MASK, align 8
  %97 = and i64 %95, %96
  %98 = load i64, i64* @PAGE_SIZE, align 8
  %99 = add i64 %97, %98
  store i64 %99, i64* %18, align 8
  store i64 1, i64* %19, align 8
  br label %100

100:                                              ; preds = %134, %85
  %101 = load i64, i64* %19, align 8
  %102 = load i64, i64* %16, align 8
  %103 = sub i64 %102, 1
  %104 = icmp ult i64 %101, %103
  br i1 %104, label %105, label %137

105:                                              ; preds = %100
  %106 = load i64, i64* %18, align 8
  %107 = inttoptr i64 %106 to i64*
  %108 = call i64 @virt_to_phys(i64* %107)
  %109 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %110 = load i64, i64* %19, align 8
  %111 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %109, i64 %110
  %112 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %111, i32 0, i32 0
  store i64 %108, i64* %112, align 8
  %113 = load i64, i64* @PAGE_SIZE, align 8
  %114 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %115 = load i64, i64* %19, align 8
  %116 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %114, i64 %115
  %117 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %116, i32 0, i32 1
  store i64 %113, i64* %117, align 8
  %118 = load i64, i64* %19, align 8
  %119 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %120 = load i64, i64* %19, align 8
  %121 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %119, i64 %120
  %122 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %19, align 8
  %125 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %126 = load i64, i64* %19, align 8
  %127 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %125, i64 %126
  %128 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.8, i64 0, i64 0), i64 %118, i64 %123, i64 %124, i64 %129)
  %131 = load i64, i64* @PAGE_SIZE, align 8
  %132 = load i64, i64* %18, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %18, align 8
  br label %134

134:                                              ; preds = %105
  %135 = load i64, i64* %19, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %19, align 8
  br label %100

137:                                              ; preds = %100
  %138 = load i64, i64* %16, align 8
  %139 = icmp ugt i64 %138, 1
  br i1 %139, label %140, label %184

140:                                              ; preds = %137
  %141 = load i64, i64* %18, align 8
  %142 = inttoptr i64 %141 to i64*
  %143 = call i64 @virt_to_phys(i64* %142)
  %144 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %145 = load i64, i64* %19, align 8
  %146 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %144, i64 %145
  %147 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %146, i32 0, i32 0
  store i64 %143, i64* %147, align 8
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %9, align 8
  %150 = add i64 %148, %149
  %151 = load i64, i64* @PAGE_MASK, align 8
  %152 = xor i64 %151, -1
  %153 = and i64 %150, %152
  %154 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %155 = load i64, i64* %19, align 8
  %156 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %154, i64 %155
  %157 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %156, i32 0, i32 1
  store i64 %153, i64* %157, align 8
  %158 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %159 = load i64, i64* %19, align 8
  %160 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %158, i64 %159
  %161 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %140
  %165 = load i64, i64* %8, align 8
  %166 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i64 %165)
  %167 = load i64, i64* %9, align 8
  %168 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i64 %167)
  br label %169

169:                                              ; preds = %164, %169
  br label %169

170:                                              ; preds = %140
  %171 = load i64, i64* %19, align 8
  %172 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %173 = load i64, i64* %19, align 8
  %174 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %172, i64 %173
  %175 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %19, align 8
  %178 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %179 = load i64, i64* %19, align 8
  %180 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %178, i64 %179
  %181 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.8, i64 0, i64 0), i64 %171, i64 %176, i64 %177, i64 %182)
  br label %184

184:                                              ; preds = %170, %137
  %185 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %17, align 8
  %186 = load %struct.sep_lli_entry_t**, %struct.sep_lli_entry_t*** %11, align 8
  store %struct.sep_lli_entry_t* %185, %struct.sep_lli_entry_t** %186, align 8
  %187 = load i64, i64* %16, align 8
  %188 = load i64*, i64** %10, align 8
  store i64 %187, i64* %188, align 8
  %189 = load %struct.page***, %struct.page**** %12, align 8
  store %struct.page** null, %struct.page*** %189, align 8
  br label %190

190:                                              ; preds = %184, %51
  %191 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @edbg(i8*, ...) #1

declare dso_local %struct.sep_lli_entry_t* @kmalloc(i32, i32) #1

declare dso_local i64 @virt_to_phys(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
