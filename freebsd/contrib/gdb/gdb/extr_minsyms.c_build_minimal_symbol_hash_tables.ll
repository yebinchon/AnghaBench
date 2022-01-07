; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_minsyms.c_build_minimal_symbol_hash_tables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_minsyms.c_build_minimal_symbol_hash_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, i64*, i64*, %struct.minimal_symbol* }
%struct.minimal_symbol = type { i64, i64 }

@MINIMAL_SYMBOL_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*)* @build_minimal_symbol_hash_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_minimal_symbol_hash_tables(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.minimal_symbol*, align 8
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MINIMAL_SYMBOL_HASH_SIZE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = load %struct.objfile*, %struct.objfile** %2, align 8
  %11 = getelementptr inbounds %struct.objfile, %struct.objfile* %10, i32 0, i32 2
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  store i64 0, i64* %15, align 8
  %16 = load %struct.objfile*, %struct.objfile** %2, align 8
  %17 = getelementptr inbounds %struct.objfile, %struct.objfile* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %9
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %5

25:                                               ; preds = %5
  %26 = load %struct.objfile*, %struct.objfile** %2, align 8
  %27 = getelementptr inbounds %struct.objfile, %struct.objfile* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %3, align 4
  %29 = load %struct.objfile*, %struct.objfile** %2, align 8
  %30 = getelementptr inbounds %struct.objfile, %struct.objfile* %29, i32 0, i32 3
  %31 = load %struct.minimal_symbol*, %struct.minimal_symbol** %30, align 8
  store %struct.minimal_symbol* %31, %struct.minimal_symbol** %4, align 8
  br label %32

32:                                               ; preds = %55, %25
  %33 = load i32, i32* %3, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %32
  %36 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %37 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %39 = load %struct.objfile*, %struct.objfile** %2, align 8
  %40 = getelementptr inbounds %struct.objfile, %struct.objfile* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = call i32 @add_minsym_to_hash_table(%struct.minimal_symbol* %38, i64* %41)
  %43 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %44 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %46 = call i32* @SYMBOL_DEMANGLED_NAME(%struct.minimal_symbol* %45)
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %35
  %49 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %50 = load %struct.objfile*, %struct.objfile** %2, align 8
  %51 = getelementptr inbounds %struct.objfile, %struct.objfile* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = call i32 @add_minsym_to_demangled_hash_table(%struct.minimal_symbol* %49, i64* %52)
  br label %54

54:                                               ; preds = %48, %35
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %3, align 4
  %58 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %59 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %58, i32 1
  store %struct.minimal_symbol* %59, %struct.minimal_symbol** %4, align 8
  br label %32

60:                                               ; preds = %32
  ret void
}

declare dso_local i32 @add_minsym_to_hash_table(%struct.minimal_symbol*, i64*) #1

declare dso_local i32* @SYMBOL_DEMANGLED_NAME(%struct.minimal_symbol*) #1

declare dso_local i32 @add_minsym_to_demangled_hash_table(%struct.minimal_symbol*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
