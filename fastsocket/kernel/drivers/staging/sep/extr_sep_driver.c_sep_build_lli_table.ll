; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_build_lli_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_build_lli_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_lli_entry_t = type { i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"SEP Driver:--------> sep_build_lli_table start\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"SEP Driver:table_data_size is %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"SEP Driver:lli_table_ptr is %08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"SEP Driver:lli_table_ptr->physical_address is %08lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"SEP Driver:lli_table_ptr->block_size is %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"SEP Driver:curr_table_data_size > table_data_size\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"SEP Driver:*num_processed_entries_ptr is %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"SEP Driver:<-------- sep_build_lli_table end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sep_lli_entry_t*, %struct.sep_lli_entry_t*, i64*, i64*, i64)* @sep_build_lli_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sep_build_lli_table(%struct.sep_lli_entry_t* %0, %struct.sep_lli_entry_t* %1, i64* %2, i64* %3, i64 %4) #0 {
  %6 = alloca %struct.sep_lli_entry_t*, align 8
  %7 = alloca %struct.sep_lli_entry_t*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.sep_lli_entry_t* %0, %struct.sep_lli_entry_t** %6, align 8
  store %struct.sep_lli_entry_t* %1, %struct.sep_lli_entry_t** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = call i32 @dbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load i64*, i64** %9, align 8
  store i64 1, i64* %14, align 8
  %15 = load i64, i64* %10, align 8
  %16 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  br label %17

17:                                               ; preds = %86, %5
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %97

21:                                               ; preds = %17
  %22 = load i64*, i64** %9, align 8
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %6, align 8
  %26 = load i64, i64* %12, align 8
  %27 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %25, i64 %26
  %28 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %7, align 8
  %31 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %6, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %32, i64 %33
  %35 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %7, align 8
  %38 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %7, align 8
  %40 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %11, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %11, align 8
  %44 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %7, align 8
  %45 = ptrtoint %struct.sep_lli_entry_t* %44 to i64
  %46 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  %47 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %7, align 8
  %48 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %49)
  %51 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %7, align 8
  %52 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %53)
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %21
  %59 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = sub i64 %60, %61
  %63 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %7, align 8
  %64 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %65, %62
  store i64 %66, i64* %64, align 8
  %67 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %7, align 8
  %68 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %6, align 8
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %70, i64 %71
  %73 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, %69
  store i64 %75, i64* %73, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %10, align 8
  %78 = sub i64 %76, %77
  %79 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %6, align 8
  %80 = load i64, i64* %12, align 8
  %81 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %79, i64 %80
  %82 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %81, i32 0, i32 1
  store i64 %78, i64* %82, align 8
  br label %86

83:                                               ; preds = %21
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %12, align 8
  br label %86

86:                                               ; preds = %83, %58
  %87 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %7, align 8
  %88 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %89)
  %91 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %7, align 8
  %92 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %93)
  %95 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %7, align 8
  %96 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %95, i32 1
  store %struct.sep_lli_entry_t* %96, %struct.sep_lli_entry_t** %7, align 8
  br label %17

97:                                               ; preds = %17
  %98 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %7, align 8
  %99 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %98, i32 0, i32 0
  store i64 4294967295, i64* %99, align 8
  %100 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %7, align 8
  %101 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  %102 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %7, align 8
  %103 = ptrtoint %struct.sep_lli_entry_t* %102 to i64
  %104 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %103)
  %105 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %7, align 8
  %106 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %107)
  %109 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %7, align 8
  %110 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %111)
  %113 = load i64, i64* %12, align 8
  %114 = load i64*, i64** %8, align 8
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, %113
  store i64 %116, i64* %114, align 8
  %117 = load i64*, i64** %8, align 8
  %118 = load i64, i64* %117, align 8
  %119 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i64 %118)
  %120 = call i32 @dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @edbg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
