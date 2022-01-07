; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_ranges.c__dwarf_ranges_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_ranges.c__dwarf_ranges_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c".debug_ranges\00", align 1
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@rl_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_ranges_add(%struct.TYPE_14__* %0, i32 %1, i32 %2, %struct.TYPE_13__** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_13__** %3, %struct.TYPE_13__*** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %17 = call i32* @_dwarf_find_section(%struct.TYPE_14__* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %12, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %23 = call i32 @DWARF_SET_ERROR(%struct.TYPE_14__* %20, i32* %21, i32 %22)
  %24 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  store i32 %24, i32* %6, align 4
  br label %103

25:                                               ; preds = %5
  %26 = call %struct.TYPE_13__* @malloc(i32 4)
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %13, align 8
  %27 = icmp eq %struct.TYPE_13__* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* @DW_DLE_MEMORY, align 4
  %32 = call i32 @DWARF_SET_ERROR(%struct.TYPE_14__* %29, i32* %30, i32 %31)
  %33 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %33, i32* %6, align 4
  br label %103

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @_dwarf_ranges_parse(%struct.TYPE_14__* %38, i32 %39, i32* %40, i32 %41, %struct.TYPE_13__* null, i64* %14)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @DW_DLE_NONE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %48 = call i32 @free(%struct.TYPE_13__* %47)
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %6, align 4
  br label %103

50:                                               ; preds = %34
  %51 = load i64, i64* %14, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %14, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %50
  %57 = load i64, i64* %14, align 8
  %58 = call %struct.TYPE_13__* @calloc(i64 %57, i32 4)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %60, align 8
  %61 = icmp eq %struct.TYPE_13__* %58, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %64 = call i32 @free(%struct.TYPE_13__* %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* @DW_DLE_MEMORY, align 4
  %68 = call i32 @DWARF_SET_ERROR(%struct.TYPE_14__* %65, i32* %66, i32 %67)
  %69 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %69, i32* %6, align 4
  br label %103

70:                                               ; preds = %56
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = call i32 @_dwarf_ranges_parse(%struct.TYPE_14__* %71, i32 %72, i32* %73, i32 %74, %struct.TYPE_13__* %77, i64* null)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @DW_DLE_NONE, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %70
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = call i32 @free(%struct.TYPE_13__* %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %88 = call i32 @free(%struct.TYPE_13__* %87)
  %89 = load i32, i32* %15, align 4
  store i32 %89, i32* %6, align 4
  br label %103

90:                                               ; preds = %70
  br label %94

91:                                               ; preds = %50
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %93, align 8
  br label %94

94:                                               ; preds = %91, %90
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %98 = load i32, i32* @rl_next, align 4
  %99 = call i32 @STAILQ_INSERT_TAIL(i32* %96, %struct.TYPE_13__* %97, i32 %98)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %101 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %10, align 8
  store %struct.TYPE_13__* %100, %struct.TYPE_13__** %101, align 8
  %102 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %94, %82, %62, %46, %28, %19
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32* @_dwarf_find_section(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local %struct.TYPE_13__* @malloc(i32) #1

declare dso_local i32 @_dwarf_ranges_parse(%struct.TYPE_14__*, i32, i32*, i32, %struct.TYPE_13__*, i64*) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @calloc(i64, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
