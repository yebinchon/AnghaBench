; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_check_cu_functions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_check_cu_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf2_cu = type { %struct.function_range*, %struct.function_range* }
%struct.function_range = type { i64, i64, i32, i32, %struct.function_range* }

@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"misplaced first line number at 0x%lx for '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.dwarf2_cu*)* @check_cu_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_cu_functions(i64 %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dwarf2_cu*, align 8
  %6 = alloca %struct.function_range*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %5, align 8
  %7 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %8 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %7, i32 0, i32 1
  %9 = load %struct.function_range*, %struct.function_range** %8, align 8
  %10 = icmp ne %struct.function_range* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %3, align 8
  br label %109

13:                                               ; preds = %2
  %14 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %15 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %14, i32 0, i32 0
  %16 = load %struct.function_range*, %struct.function_range** %15, align 8
  %17 = icmp ne %struct.function_range* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %20 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %19, i32 0, i32 1
  %21 = load %struct.function_range*, %struct.function_range** %20, align 8
  %22 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %23 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %22, i32 0, i32 0
  store %struct.function_range* %21, %struct.function_range** %23, align 8
  br label %24

24:                                               ; preds = %18, %13
  %25 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %26 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %25, i32 0, i32 0
  %27 = load %struct.function_range*, %struct.function_range** %26, align 8
  store %struct.function_range* %27, %struct.function_range** %6, align 8
  br label %28

28:                                               ; preds = %48, %24
  %29 = load %struct.function_range*, %struct.function_range** %6, align 8
  %30 = icmp ne %struct.function_range* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = load %struct.function_range*, %struct.function_range** %6, align 8
  %33 = getelementptr inbounds %struct.function_range, %struct.function_range* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.function_range*, %struct.function_range** %6, align 8
  %39 = getelementptr inbounds %struct.function_range, %struct.function_range* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %84

44:                                               ; preds = %37, %31
  %45 = load %struct.function_range*, %struct.function_range** %6, align 8
  %46 = getelementptr inbounds %struct.function_range, %struct.function_range* %45, i32 0, i32 4
  %47 = load %struct.function_range*, %struct.function_range** %46, align 8
  store %struct.function_range* %47, %struct.function_range** %6, align 8
  br label %48

48:                                               ; preds = %44
  br label %28

49:                                               ; preds = %28
  %50 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %51 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %50, i32 0, i32 1
  %52 = load %struct.function_range*, %struct.function_range** %51, align 8
  store %struct.function_range* %52, %struct.function_range** %6, align 8
  br label %53

53:                                               ; preds = %81, %49
  %54 = load %struct.function_range*, %struct.function_range** %6, align 8
  %55 = icmp ne %struct.function_range* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.function_range*, %struct.function_range** %6, align 8
  %58 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %59 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %58, i32 0, i32 0
  %60 = load %struct.function_range*, %struct.function_range** %59, align 8
  %61 = icmp ne %struct.function_range* %57, %60
  br label %62

62:                                               ; preds = %56, %53
  %63 = phi i1 [ false, %53 ], [ %61, %56 ]
  br i1 %63, label %64, label %82

64:                                               ; preds = %62
  %65 = load %struct.function_range*, %struct.function_range** %6, align 8
  %66 = getelementptr inbounds %struct.function_range, %struct.function_range* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %4, align 8
  %69 = icmp sle i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.function_range*, %struct.function_range** %6, align 8
  %72 = getelementptr inbounds %struct.function_range, %struct.function_range* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %4, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %84

77:                                               ; preds = %70, %64
  %78 = load %struct.function_range*, %struct.function_range** %6, align 8
  %79 = getelementptr inbounds %struct.function_range, %struct.function_range* %78, i32 0, i32 4
  %80 = load %struct.function_range*, %struct.function_range** %79, align 8
  store %struct.function_range* %80, %struct.function_range** %6, align 8
  br label %81

81:                                               ; preds = %77
  br label %53

82:                                               ; preds = %62
  %83 = load i64, i64* %4, align 8
  store i64 %83, i64* %3, align 8
  br label %109

84:                                               ; preds = %76, %43
  %85 = load %struct.function_range*, %struct.function_range** %6, align 8
  %86 = getelementptr inbounds %struct.function_range, %struct.function_range* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i64, i64* %4, align 8
  store i64 %90, i64* %3, align 8
  br label %109

91:                                               ; preds = %84
  %92 = load i64, i64* %4, align 8
  %93 = load %struct.function_range*, %struct.function_range** %6, align 8
  %94 = getelementptr inbounds %struct.function_range, %struct.function_range* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %92, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i64, i64* %4, align 8
  %99 = load %struct.function_range*, %struct.function_range** %6, align 8
  %100 = getelementptr inbounds %struct.function_range, %struct.function_range* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %98, i32 %101)
  br label %103

103:                                              ; preds = %97, %91
  %104 = load %struct.function_range*, %struct.function_range** %6, align 8
  %105 = getelementptr inbounds %struct.function_range, %struct.function_range* %104, i32 0, i32 2
  store i32 1, i32* %105, align 8
  %106 = load %struct.function_range*, %struct.function_range** %6, align 8
  %107 = getelementptr inbounds %struct.function_range, %struct.function_range* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %3, align 8
  br label %109

109:                                              ; preds = %103, %89, %82, %11
  %110 = load i64, i64* %3, align 8
  ret i64 %110
}

declare dso_local i32 @complaint(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
