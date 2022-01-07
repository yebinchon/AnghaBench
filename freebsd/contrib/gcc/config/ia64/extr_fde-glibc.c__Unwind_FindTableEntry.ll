; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_fde-glibc.c__Unwind_FindTableEntry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_fde-glibc.c__Unwind_FindTableEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_table_entry = type { i32 }
%struct.unw_ia64_callback_data = type { i64*, i64*, %struct.unw_table_entry*, i64 }

@_Unwind_IteratePhdrCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.unw_table_entry* @_Unwind_FindTableEntry(i8* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.unw_table_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.unw_ia64_callback_data, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = getelementptr inbounds %struct.unw_ia64_callback_data, %struct.unw_ia64_callback_data* %8, i32 0, i32 3
  store i64 %10, i64* %11, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = getelementptr inbounds %struct.unw_ia64_callback_data, %struct.unw_ia64_callback_data* %8, i32 0, i32 0
  store i64* %12, i64** %13, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = getelementptr inbounds %struct.unw_ia64_callback_data, %struct.unw_ia64_callback_data* %8, i32 0, i32 1
  store i64* %14, i64** %15, align 8
  %16 = getelementptr inbounds %struct.unw_ia64_callback_data, %struct.unw_ia64_callback_data* %8, i32 0, i32 2
  store %struct.unw_table_entry* null, %struct.unw_table_entry** %16, align 8
  %17 = load i32, i32* @_Unwind_IteratePhdrCallback, align 4
  %18 = call i64 @dl_iterate_phdr(i32 %17, %struct.unw_ia64_callback_data* %8)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store %struct.unw_table_entry* null, %struct.unw_table_entry** %4, align 8
  br label %24

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.unw_ia64_callback_data, %struct.unw_ia64_callback_data* %8, i32 0, i32 2
  %23 = load %struct.unw_table_entry*, %struct.unw_table_entry** %22, align 8
  store %struct.unw_table_entry* %23, %struct.unw_table_entry** %4, align 8
  br label %24

24:                                               ; preds = %21, %20
  %25 = load %struct.unw_table_entry*, %struct.unw_table_entry** %4, align 8
  ret %struct.unw_table_entry* %25
}

declare dso_local i64 @dl_iterate_phdr(i32, %struct.unw_ia64_callback_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
