; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_debug_print_lli_tables.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_debug_print_lli_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sep_device = type { i32 }
%struct.sep_lli_entry_t = type { i32, i64 }

@.str = private unnamed_addr constant [55 x i8] c"SEP Driver:--------> sep_debug_print_lli_tables start\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"SEP Driver: lli table %08lx, table_data_size is %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"SEP Driver: num_table_entries is %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"SEP Driver:lli_table_ptr address is %08lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"SEP Driver:phys address is %08lx block size is %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"SEP Driver:phys lli_table_ptr->block_size is %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"SEP Driver:phys lli_table_ptr->physical_address is %08lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [85 x i8] c"SEP Driver:phys table_data_size is %lu num_table_entries is %lu lli_table_ptr is%lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"SEP Driver:<-------- sep_debug_print_lli_tables end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sep_device*, %struct.sep_lli_entry_t*, i64, i64)* @sep_debug_print_lli_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sep_debug_print_lli_tables(%struct.sep_device* %0, %struct.sep_lli_entry_t* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.sep_device*, align 8
  %6 = alloca %struct.sep_lli_entry_t*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.sep_device* %0, %struct.sep_device** %5, align 8
  store %struct.sep_lli_entry_t* %1, %struct.sep_lli_entry_t** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = call i32 @dbg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i64 1, i64* %9, align 8
  br label %12

12:                                               ; preds = %83, %4
  %13 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %6, align 8
  %14 = ptrtoint %struct.sep_lli_entry_t* %13 to i64
  %15 = icmp ne i64 %14, 4294967295
  br i1 %15, label %16, label %86

16:                                               ; preds = %12
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 (i8*, i64, ...) @edbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %17, i64 %18)
  %20 = load i64, i64* %7, align 8
  %21 = call i32 (i8*, i64, ...) @edbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %37, %16
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %6, align 8
  %28 = ptrtoint %struct.sep_lli_entry_t* %27 to i64
  %29 = call i32 (i8*, i64, ...) @edbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %28)
  %30 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %6, align 8
  %31 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %6, align 8
  %34 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, i64, ...) @edbg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %32, i32 %35)
  br label %37

37:                                               ; preds = %26
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %10, align 8
  %40 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %6, align 8
  %41 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %40, i32 1
  store %struct.sep_lli_entry_t* %41, %struct.sep_lli_entry_t** %6, align 8
  br label %22

42:                                               ; preds = %22
  %43 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %6, align 8
  %44 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %43, i32 -1
  store %struct.sep_lli_entry_t* %44, %struct.sep_lli_entry_t** %6, align 8
  %45 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %6, align 8
  %46 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = call i32 (i8*, i64, ...) @edbg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %48)
  %50 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %6, align 8
  %51 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i8*, i64, ...) @edbg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i64 %52)
  %54 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %6, align 8
  %55 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 16777215
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %8, align 8
  %59 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %6, align 8
  %60 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = ashr i32 %61, 24
  %63 = and i32 %62, 255
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %7, align 8
  %65 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %6, align 8
  %66 = getelementptr inbounds %struct.sep_lli_entry_t, %struct.sep_lli_entry_t* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.sep_lli_entry_t*
  store %struct.sep_lli_entry_t* %68, %struct.sep_lli_entry_t** %6, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %6, align 8
  %72 = ptrtoint %struct.sep_lli_entry_t* %71 to i64
  %73 = call i32 (i8*, i64, ...) @edbg(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.7, i64 0, i64 0), i64 %69, i64 %70, i64 %72)
  %74 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %6, align 8
  %75 = ptrtoint %struct.sep_lli_entry_t* %74 to i64
  %76 = icmp ne i64 %75, 4294967295
  br i1 %76, label %77, label %83

77:                                               ; preds = %42
  %78 = load %struct.sep_device*, %struct.sep_device** %5, align 8
  %79 = load %struct.sep_lli_entry_t*, %struct.sep_lli_entry_t** %6, align 8
  %80 = ptrtoint %struct.sep_lli_entry_t* %79 to i64
  %81 = call i64 @sep_shared_bus_to_virt(%struct.sep_device* %78, i64 %80)
  %82 = inttoptr i64 %81 to %struct.sep_lli_entry_t*
  store %struct.sep_lli_entry_t* %82, %struct.sep_lli_entry_t** %6, align 8
  br label %83

83:                                               ; preds = %77, %42
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %9, align 8
  br label %12

86:                                               ; preds = %12
  %87 = call i32 @dbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @edbg(i8*, i64, ...) #1

declare dso_local i64 @sep_shared_bus_to_virt(%struct.sep_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
