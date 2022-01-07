; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_comp_unit_find_nearest_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_comp_unit_find_nearest_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comp_unit = type { i32, i64, i64, i64, i32 }
%struct.dwarf2_debug = type { %struct.funcinfo* }
%struct.funcinfo = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@DW_TAG_inlined_subroutine = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comp_unit*, i32, i8**, i8**, i32*, %struct.dwarf2_debug*)* @comp_unit_find_nearest_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_unit_find_nearest_line(%struct.comp_unit* %0, i32 %1, i8** %2, i8** %3, i32* %4, %struct.dwarf2_debug* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.comp_unit*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dwarf2_debug*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.funcinfo*, align 8
  store %struct.comp_unit* %0, %struct.comp_unit** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8** %2, i8*** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.dwarf2_debug* %5, %struct.dwarf2_debug** %13, align 8
  %17 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %18 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %7, align 4
  br label %102

23:                                               ; preds = %6
  %24 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %25 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %68, label %28

28:                                               ; preds = %23
  %29 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %30 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %35 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %7, align 4
  br label %102

37:                                               ; preds = %28
  %38 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %39 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %13, align 8
  %40 = call i64 @decode_line_info(%struct.comp_unit* %38, %struct.dwarf2_debug* %39)
  %41 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %42 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  %43 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %44 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %37
  %48 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %49 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %7, align 4
  br label %102

51:                                               ; preds = %37
  %52 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %53 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %56 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %61 = call i32 @scan_unit_for_symbols(%struct.comp_unit* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %65 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %7, align 4
  br label %102

67:                                               ; preds = %59, %51
  br label %68

68:                                               ; preds = %67, %23
  store %struct.funcinfo* null, %struct.funcinfo** %16, align 8
  %69 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i8**, i8*** %11, align 8
  %72 = call i32 @lookup_address_in_function_table(%struct.comp_unit* %69, i32 %70, %struct.funcinfo** %16, i8** %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = load %struct.funcinfo*, %struct.funcinfo** %16, align 8
  %77 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DW_TAG_inlined_subroutine, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.funcinfo*, %struct.funcinfo** %16, align 8
  %83 = load %struct.dwarf2_debug*, %struct.dwarf2_debug** %13, align 8
  %84 = getelementptr inbounds %struct.dwarf2_debug, %struct.dwarf2_debug* %83, i32 0, i32 0
  store %struct.funcinfo* %82, %struct.funcinfo** %84, align 8
  br label %85

85:                                               ; preds = %81, %75, %68
  %86 = load %struct.comp_unit*, %struct.comp_unit** %8, align 8
  %87 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.funcinfo*, %struct.funcinfo** %16, align 8
  %91 = load i8**, i8*** %10, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = call i32 @lookup_address_in_line_info_table(i64 %88, i32 %89, %struct.funcinfo* %90, i8** %91, i32* %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br label %99

99:                                               ; preds = %96, %85
  %100 = phi i1 [ true, %85 ], [ %98, %96 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %99, %63, %47, %33, %21
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i64 @decode_line_info(%struct.comp_unit*, %struct.dwarf2_debug*) #1

declare dso_local i32 @scan_unit_for_symbols(%struct.comp_unit*) #1

declare dso_local i32 @lookup_address_in_function_table(%struct.comp_unit*, i32, %struct.funcinfo**, i8**) #1

declare dso_local i32 @lookup_address_in_line_info_table(i64, i32, %struct.funcinfo*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
