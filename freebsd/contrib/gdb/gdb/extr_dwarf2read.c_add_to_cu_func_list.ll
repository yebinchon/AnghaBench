; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_add_to_cu_func_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_add_to_cu_func_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf2_cu = type { %struct.function_range*, %struct.function_range* }
%struct.function_range = type { i8*, %struct.function_range*, i64, i8*, i8* }

@dwarf2_tmp_obstack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, %struct.dwarf2_cu*)* @add_to_cu_func_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_cu_func_list(i8* %0, i8* %1, i8* %2, %struct.dwarf2_cu* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dwarf2_cu*, align 8
  %9 = alloca %struct.function_range*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.dwarf2_cu* %3, %struct.dwarf2_cu** %8, align 8
  %10 = call i64 @obstack_alloc(i32* @dwarf2_tmp_obstack, i32 40)
  %11 = inttoptr i64 %10 to %struct.function_range*
  store %struct.function_range* %11, %struct.function_range** %9, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.function_range*, %struct.function_range** %9, align 8
  %14 = getelementptr inbounds %struct.function_range, %struct.function_range* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.function_range*, %struct.function_range** %9, align 8
  %17 = getelementptr inbounds %struct.function_range, %struct.function_range* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.function_range*, %struct.function_range** %9, align 8
  %20 = getelementptr inbounds %struct.function_range, %struct.function_range* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load %struct.function_range*, %struct.function_range** %9, align 8
  %22 = getelementptr inbounds %struct.function_range, %struct.function_range* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.function_range*, %struct.function_range** %9, align 8
  %24 = getelementptr inbounds %struct.function_range, %struct.function_range* %23, i32 0, i32 1
  store %struct.function_range* null, %struct.function_range** %24, align 8
  %25 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %8, align 8
  %26 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %25, i32 0, i32 0
  %27 = load %struct.function_range*, %struct.function_range** %26, align 8
  %28 = icmp eq %struct.function_range* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.function_range*, %struct.function_range** %9, align 8
  %31 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %8, align 8
  %32 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %31, i32 0, i32 1
  store %struct.function_range* %30, %struct.function_range** %32, align 8
  br label %39

33:                                               ; preds = %4
  %34 = load %struct.function_range*, %struct.function_range** %9, align 8
  %35 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %8, align 8
  %36 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %35, i32 0, i32 0
  %37 = load %struct.function_range*, %struct.function_range** %36, align 8
  %38 = getelementptr inbounds %struct.function_range, %struct.function_range* %37, i32 0, i32 1
  store %struct.function_range* %34, %struct.function_range** %38, align 8
  br label %39

39:                                               ; preds = %33, %29
  %40 = load %struct.function_range*, %struct.function_range** %9, align 8
  %41 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %8, align 8
  %42 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %41, i32 0, i32 0
  store %struct.function_range* %40, %struct.function_range** %42, align 8
  ret void
}

declare dso_local i64 @obstack_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
