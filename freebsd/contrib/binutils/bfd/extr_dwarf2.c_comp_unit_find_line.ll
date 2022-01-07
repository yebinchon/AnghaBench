; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_comp_unit_find_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_comp_unit_find_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comp_unit = type { i32, i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dwarf2_debug = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@BSF_FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comp_unit*, %struct.TYPE_5__*, i32, i8**, i32*, %struct.dwarf2_debug*)* @comp_unit_find_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_unit_find_line(%struct.comp_unit* %0, %struct.TYPE_5__* %1, i32 %2, i8** %3, i32* %4, %struct.dwarf2_debug* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.comp_unit*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dwarf2_debug*, align 8
  store %struct.comp_unit* %0, %struct.comp_unit** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.dwarf2_debug* %5, %struct.dwarf2_debug** %13, align 8
  %14 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %15 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %7, align 4
  br label %86

20:                                               ; preds = %6
  %21 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %22 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %65, label %25

25:                                               ; preds = %20
  %26 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %27 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %32 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %7, align 4
  br label %86

34:                                               ; preds = %25
  %35 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %36 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %13, align 8
  %37 = call i64 @decode_line_info(%struct.comp_unit* %35, %struct.dwarf2_debug* %36)
  %38 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %39 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %41 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %34
  %45 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %46 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %7, align 4
  br label %86

48:                                               ; preds = %34
  %49 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %50 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %53 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %58 = call i32 @scan_unit_for_symbols(%struct.comp_unit* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %62 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %7, align 4
  br label %86

64:                                               ; preds = %56, %48
  br label %65

65:                                               ; preds = %64, %20
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @BSF_FUNCTION, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i8**, i8*** %11, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @lookup_symbol_in_function_table(%struct.comp_unit* %73, %struct.TYPE_5__* %74, i32 %75, i8** %76, i32* %77)
  store i32 %78, i32* %7, align 4
  br label %86

79:                                               ; preds = %65
  %80 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i8**, i8*** %11, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @lookup_symbol_in_variable_table(%struct.comp_unit* %80, %struct.TYPE_5__* %81, i32 %82, i8** %83, i32* %84)
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %79, %72, %60, %44, %30, %18
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i64 @decode_line_info(%struct.comp_unit*, %struct.dwarf2_debug*) #1

declare dso_local i32 @scan_unit_for_symbols(%struct.comp_unit*) #1

declare dso_local i32 @lookup_symbol_in_function_table(%struct.comp_unit*, %struct.TYPE_5__*, i32, i8**, i32*) #1

declare dso_local i32 @lookup_symbol_in_variable_table(%struct.comp_unit*, %struct.TYPE_5__*, i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
