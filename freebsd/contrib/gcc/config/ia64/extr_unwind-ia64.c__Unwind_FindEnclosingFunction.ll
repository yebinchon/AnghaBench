; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c__Unwind_FindEnclosingFunction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c__Unwind_FindEnclosingFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_table_entry = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_Unwind_FindEnclosingFunction(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.unw_table_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.unw_table_entry* @_Unwind_FindTableEntry(i8* %7, i64* %5, i64* %6)
  store %struct.unw_table_entry* %8, %struct.unw_table_entry** %4, align 8
  %9 = load %struct.unw_table_entry*, %struct.unw_table_entry** %4, align 8
  %10 = icmp eq %struct.unw_table_entry* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %19

12:                                               ; preds = %1
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.unw_table_entry*, %struct.unw_table_entry** %4, align 8
  %15 = getelementptr inbounds %struct.unw_table_entry, %struct.unw_table_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %13, %16
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %2, align 8
  br label %19

19:                                               ; preds = %12, %11
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

declare dso_local %struct.unw_table_entry* @_Unwind_FindTableEntry(i8*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
