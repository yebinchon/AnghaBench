; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_frame.c_dwarf_get_fde_info_for_reg3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_frame.c_dwarf_get_fde_info_for_reg3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLE_PC_NOT_IN_FDE_RANGE = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLE_FRAME_TABLE_COL_BAD = common dso_local global i32 0, align 4
@RL = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_fde_info_for_reg3(%struct.TYPE_7__* %0, i64 %1, i64 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i64* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_8__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %12, align 8
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i64* %8, i64** %20, align 8
  store i32* %9, i32** %21, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %10
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  br label %33

32:                                               ; preds = %10
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi %struct.TYPE_8__* [ %31, %28 ], [ null, %32 ]
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %23, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %36 = icmp eq %struct.TYPE_7__* %35, null
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = load i32*, i32** %15, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %55, label %40

40:                                               ; preds = %37
  %41 = load i32*, i32** %16, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %40
  %44 = load i32*, i32** %17, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = load i32*, i32** %18, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i32*, i32** %19, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i64*, i64** %20, align 8
  %54 = icmp eq i64* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %52, %49, %46, %43, %40, %37, %33
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %57 = load i32*, i32** %21, align 8
  %58 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %59 = call i32 @DWARF_SET_ERROR(%struct.TYPE_8__* %56, i32* %57, i32 %58)
  %60 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %60, i32* %11, align 4
  br label %119

61:                                               ; preds = %52
  %62 = load i64, i64* %14, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %77, label %67

67:                                               ; preds = %61
  %68 = load i64, i64* %14, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = icmp sge i64 %68, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %67, %61
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %79 = load i32*, i32** %21, align 8
  %80 = load i32, i32* @DW_DLE_PC_NOT_IN_FDE_RANGE, align 4
  %81 = call i32 @DWARF_SET_ERROR(%struct.TYPE_8__* %78, i32* %79, i32 %80)
  %82 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %82, i32* %11, align 4
  br label %119

83:                                               ; preds = %67
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i32*, i32** %21, align 8
  %87 = call i32 @_dwarf_frame_get_internal_table(%struct.TYPE_7__* %84, i64 %85, i32** %22, i64* %24, i32* %86)
  store i32 %87, i32* %25, align 4
  %88 = load i32, i32* %25, align 4
  %89 = load i32, i32* @DW_DLE_NONE, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %92, i32* %11, align 4
  br label %119

93:                                               ; preds = %83
  %94 = load i64, i64* %13, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp sge i64 %94, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %101 = load i32*, i32** %21, align 8
  %102 = load i32, i32* @DW_DLE_FRAME_TABLE_COL_BAD, align 4
  %103 = call i32 @DWARF_SET_ERROR(%struct.TYPE_8__* %100, i32* %101, i32 %102)
  %104 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %104, i32* %11, align 4
  br label %119

105:                                              ; preds = %93
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @RL, i32 0, i32 4), align 4
  %107 = load i32*, i32** %15, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @RL, i32 0, i32 3), align 4
  %109 = load i32*, i32** %16, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @RL, i32 0, i32 2), align 4
  %111 = load i32*, i32** %17, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @RL, i32 0, i32 1), align 4
  %113 = load i32*, i32** %18, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @RL, i32 0, i32 0), align 4
  %115 = load i32*, i32** %19, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i64, i64* %24, align 8
  %117 = load i64*, i64** %20, align 8
  store i64 %116, i64* %117, align 8
  %118 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %105, %99, %91, %77, %55
  %120 = load i32, i32* %11, align 4
  ret i32 %120
}

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @_dwarf_frame_get_internal_table(%struct.TYPE_7__*, i64, i32**, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
