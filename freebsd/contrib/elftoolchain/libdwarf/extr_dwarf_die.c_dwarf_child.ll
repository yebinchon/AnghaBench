; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_die.c_dwarf_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_die.c_dwarf_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32*, i32* }
%struct.TYPE_14__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { i64 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_CHILDREN_no = common dso_local global i64 0, align 8
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_child(%struct.TYPE_12__* %0, %struct.TYPE_12__** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = icmp ne %struct.TYPE_12__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi %struct.TYPE_13__* [ %17, %14 ], [ null, %18 ]
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %8, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = icmp eq %struct.TYPE_12__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %25 = icmp eq %struct.TYPE_12__** %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23, %19
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %30 = call i32 @DWARF_SET_ERROR(%struct.TYPE_13__* %27, i32* %28, i32 %29)
  %31 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %31, i32* %4, align 4
  br label %98

32:                                               ; preds = %23
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DW_CHILDREN_no, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %41, i32* %4, align 4
  br label %98

42:                                               ; preds = %32
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %8, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %10, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  br label %61

57:                                               ; preds = %42
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i32* [ %56, %53 ], [ %60, %57 ]
  store i32* %62, i32** %9, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @_dwarf_die_parse(%struct.TYPE_13__* %65, i32* %66, %struct.TYPE_14__* %67, i32 %70, i32 %73, i32 %76, %struct.TYPE_12__** %77, i32 0, i32* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %61
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %87 = call i32 @DWARF_SET_ERROR(%struct.TYPE_13__* %84, i32* %85, i32 %86)
  %88 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %88, i32* %4, align 4
  br label %98

89:                                               ; preds = %61
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @DW_DLE_NONE, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %94, i32* %4, align 4
  br label %98

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %93, %83, %40, %26
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @_dwarf_die_parse(%struct.TYPE_13__*, i32*, %struct.TYPE_14__*, i32, i32, i32, %struct.TYPE_12__**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
