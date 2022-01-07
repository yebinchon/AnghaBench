; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_frame.c_dwarf_get_fde_info_for_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_frame.c_dwarf_get_fde_info_for_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLE_PC_NOT_IN_FDE_RANGE = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@CFA = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@DW_REG_TABLE_SIZE = common dso_local global i64 0, align 8
@DW_DLE_FRAME_TABLE_COL_BAD = common dso_local global i32 0, align 4
@RL = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_fde_info_for_reg(%struct.TYPE_8__* %0, i64 %1, i64 %2, i32* %3, i32* %4, i32* %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  br label %29

28:                                               ; preds = %8
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi %struct.TYPE_9__* [ %27, %24 ], [ null, %28 ]
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %19, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %32 = icmp eq %struct.TYPE_8__* %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = load i32*, i32** %13, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %14, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32*, i32** %15, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i64*, i64** %16, align 8
  %44 = icmp eq i64* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42, %39, %36, %33, %29
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %47 = load i32*, i32** %17, align 8
  %48 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %49 = call i32 @DWARF_SET_ERROR(%struct.TYPE_9__* %46, i32* %47, i32 %48)
  %50 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %50, i32* %9, align 4
  br label %123

51:                                               ; preds = %42
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %51
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = icmp sge i64 %58, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %57, %51
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %69 = load i32*, i32** %17, align 8
  %70 = load i32, i32* @DW_DLE_PC_NOT_IN_FDE_RANGE, align 4
  %71 = call i32 @DWARF_SET_ERROR(%struct.TYPE_9__* %68, i32* %69, i32 %70)
  %72 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %72, i32* %9, align 4
  br label %123

73:                                               ; preds = %57
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = call i32 @_dwarf_frame_get_internal_table(%struct.TYPE_8__* %74, i64 %75, i32** %18, i64* %20, i32* %76)
  store i32 %77, i32* %21, align 4
  %78 = load i32, i32* %21, align 4
  %79 = load i32, i32* @DW_DLE_NONE, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %82, i32* %9, align 4
  br label %123

83:                                               ; preds = %73
  %84 = load i64, i64* %11, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @CFA, i32 0, i32 2), align 4
  %91 = load i32*, i32** %13, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @CFA, i32 0, i32 1), align 4
  %93 = load i32*, i32** %14, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @CFA, i32 0, i32 0), align 4
  %95 = load i32*, i32** %15, align 8
  store i32 %94, i32* %95, align 4
  br label %119

96:                                               ; preds = %83
  %97 = load i64, i64* %11, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp sge i64 %97, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %96
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* @DW_REG_TABLE_SIZE, align 8
  %105 = icmp sge i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102, %96
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %108 = load i32*, i32** %17, align 8
  %109 = load i32, i32* @DW_DLE_FRAME_TABLE_COL_BAD, align 4
  %110 = call i32 @DWARF_SET_ERROR(%struct.TYPE_9__* %107, i32* %108, i32 %109)
  %111 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %111, i32* %9, align 4
  br label %123

112:                                              ; preds = %102
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @RL, i32 0, i32 2), align 4
  %114 = load i32*, i32** %13, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @RL, i32 0, i32 1), align 4
  %116 = load i32*, i32** %14, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @RL, i32 0, i32 0), align 4
  %118 = load i32*, i32** %15, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %112, %89
  %120 = load i64, i64* %20, align 8
  %121 = load i64*, i64** %16, align 8
  store i64 %120, i64* %121, align 8
  %122 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %119, %106, %81, %67, %45
  %124 = load i32, i32* %9, align 4
  ret i32 %124
}

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @_dwarf_frame_get_internal_table(%struct.TYPE_8__*, i64, i32**, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
