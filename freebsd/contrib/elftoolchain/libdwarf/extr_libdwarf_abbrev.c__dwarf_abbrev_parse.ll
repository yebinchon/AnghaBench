; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_abbrev.c__dwarf_abbrev_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_abbrev.c__dwarf_abbrev_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i32, i64*, i32)* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c".debug_abbrev\00", align 1
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_abbrev_parse(%struct.TYPE_12__* %0, i32 %1, i64* %2, %struct.TYPE_13__** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_13__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store %struct.TYPE_13__** %3, %struct.TYPE_13__*** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %10, align 8
  %22 = icmp ne %struct.TYPE_13__** %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = call %struct.TYPE_11__* @_dwarf_find_section(%struct.TYPE_12__* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %12, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %28 = icmp eq %struct.TYPE_11__* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %5
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29, %5
  %37 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  store i32 %37, i32* %6, align 4
  br label %135

38:                                               ; preds = %29
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %16, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = call i64 @_dwarf_read_uleb128(i32 %43, i64* %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %38
  %49 = load i32, i32* %8, align 4
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* %16, align 8
  %52 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %10, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @_dwarf_abbrev_add(i32 %49, i64 %50, i64 0, i32 0, i64 %51, %struct.TYPE_13__** %52, i32* %53)
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %20, align 4
  %56 = load i32, i32* @DW_DLE_NONE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %10, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load i32, i32* %20, align 4
  store i32 %62, i32* %6, align 4
  br label %135

63:                                               ; preds = %48
  %64 = load i32, i32* %20, align 4
  store i32 %64, i32* %6, align 4
  br label %135

65:                                               ; preds = %38
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = call i64 @_dwarf_read_uleb128(i32 %68, i64* %69)
  store i64 %70, i64* %18, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %72, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i64*, i64** %9, align 8
  %78 = call i32 %73(i32 %76, i64* %77, i32 1)
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %18, align 8
  %82 = load i32, i32* %19, align 4
  %83 = load i64, i64* %16, align 8
  %84 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %10, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @_dwarf_abbrev_add(i32 %79, i64 %80, i64 %81, i32 %82, i64 %83, %struct.TYPE_13__** %84, i32* %85)
  store i32 %86, i32* %20, align 4
  %87 = load i32, i32* @DW_DLE_NONE, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %65
  %90 = load i32, i32* %20, align 4
  store i32 %90, i32* %6, align 4
  br label %135

91:                                               ; preds = %65
  br label %92

92:                                               ; preds = %122, %91
  %93 = load i64*, i64** %9, align 8
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %17, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i64*, i64** %9, align 8
  %99 = call i64 @_dwarf_read_uleb128(i32 %97, i64* %98)
  store i64 %99, i64* %13, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i64*, i64** %9, align 8
  %104 = call i64 @_dwarf_read_uleb128(i32 %102, i64* %103)
  store i64 %104, i64* %15, align 8
  %105 = load i64, i64* %13, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %92
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %109 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %10, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* %17, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 @_dwarf_attrdef_add(%struct.TYPE_12__* %108, %struct.TYPE_13__* %110, i64 %111, i64 %112, i64 %113, i32* null, i32* %114)
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* @DW_DLE_NONE, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = load i32, i32* %20, align 4
  store i32 %119, i32* %6, align 4
  br label %135

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120, %92
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %13, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %92, label %125

125:                                              ; preds = %122
  %126 = load i64*, i64** %9, align 8
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %16, align 8
  %129 = sub nsw i64 %127, %128
  %130 = trunc i64 %129 to i32
  %131 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %10, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* %20, align 4
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %125, %118, %89, %63, %58, %36
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_11__* @_dwarf_find_section(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @_dwarf_read_uleb128(i32, i64*) #1

declare dso_local i32 @_dwarf_abbrev_add(i32, i64, i64, i32, i64, %struct.TYPE_13__**, i32*) #1

declare dso_local i32 @_dwarf_attrdef_add(%struct.TYPE_12__*, %struct.TYPE_13__*, i64, i64, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
