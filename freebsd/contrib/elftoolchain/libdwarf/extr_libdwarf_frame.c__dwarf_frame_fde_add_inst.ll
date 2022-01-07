; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_frame.c__dwarf_frame_fde_add_inst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_frame.c__dwarf_frame_fde_add_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32*, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@_FDE_INST_INIT_SIZE = common dso_local global i64 0, align 8
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@DW_CFA_nop = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLE_FRAME_INSTR_EXEC_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_frame_fde_add_inst(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br label %23

23:                                               ; preds = %18, %5
  %24 = phi i1 [ false, %5 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %12, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %23
  %35 = load i64, i64* @_FDE_INST_INIT_SIZE, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32* @malloc(i64 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = icmp eq i32* %43, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* @DW_DLE_MEMORY, align 4
  %51 = call i32 @DWARF_SET_ERROR(%struct.TYPE_6__* %48, i32* %49, i32 %50)
  %52 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %52, i32* %6, align 4
  br label %134

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %23
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @WRITE_VALUE(i32 %61, i32 1)
  %63 = call i32 @RCHECK(i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @DW_CFA_nop, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %68, i32* %6, align 4
  br label %134

69:                                               ; preds = %54
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, 192
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, 63
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %69
  %77 = load i32, i32* %13, align 4
  switch i32 %77, label %83 [
    i32 144, label %78
    i32 133, label %78
    i32 137, label %79
  ]

78:                                               ; preds = %76, %76
  br label %89

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @WRITE_ULEB128(i32 %80)
  %82 = call i32 @RCHECK(i32 %81)
  br label %89

83:                                               ; preds = %76
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* @DW_DLE_FRAME_INSTR_EXEC_ERROR, align 4
  %87 = call i32 @DWARF_SET_ERROR(%struct.TYPE_6__* %84, i32* %85, i32 %86)
  %88 = load i32, i32* @DW_DLE_FRAME_INSTR_EXEC_ERROR, align 4
  store i32 %88, i32* %6, align 4
  br label %134

89:                                               ; preds = %79, %78
  %90 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %90, i32* %6, align 4
  br label %134

91:                                               ; preds = %69
  %92 = load i32, i32* %14, align 4
  switch i32 %92, label %124 [
    i32 129, label %93
    i32 143, label %100
    i32 142, label %104
    i32 141, label %108
    i32 136, label %112
    i32 140, label %112
    i32 135, label %112
    i32 132, label %119
    i32 128, label %119
    i32 130, label %119
    i32 138, label %119
    i32 139, label %119
    i32 134, label %123
    i32 131, label %123
  ]

93:                                               ; preds = %91
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @WRITE_VALUE(i32 %94, i32 %97)
  %99 = call i32 @RCHECK(i32 %98)
  br label %130

100:                                              ; preds = %91
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @WRITE_VALUE(i32 %101, i32 1)
  %103 = call i32 @RCHECK(i32 %102)
  br label %130

104:                                              ; preds = %91
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @WRITE_VALUE(i32 %105, i32 2)
  %107 = call i32 @RCHECK(i32 %106)
  br label %130

108:                                              ; preds = %91
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @WRITE_VALUE(i32 %109, i32 4)
  %111 = call i32 @RCHECK(i32 %110)
  br label %130

112:                                              ; preds = %91, %91, %91
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @WRITE_ULEB128(i32 %113)
  %115 = call i32 @RCHECK(i32 %114)
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @WRITE_ULEB128(i32 %116)
  %118 = call i32 @RCHECK(i32 %117)
  br label %130

119:                                              ; preds = %91, %91, %91, %91, %91
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @WRITE_ULEB128(i32 %120)
  %122 = call i32 @RCHECK(i32 %121)
  br label %130

123:                                              ; preds = %91, %91
  br label %130

124:                                              ; preds = %91
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* @DW_DLE_FRAME_INSTR_EXEC_ERROR, align 4
  %128 = call i32 @DWARF_SET_ERROR(%struct.TYPE_6__* %125, i32* %126, i32 %127)
  %129 = load i32, i32* @DW_DLE_FRAME_INSTR_EXEC_ERROR, align 4
  store i32 %129, i32* %6, align 4
  br label %134

130:                                              ; preds = %123, %119, %112, %108, %104, %100, %93
  %131 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %131, i32* %6, align 4
  br label %134

132:                                              ; No predecessors!
  %133 = load i32, i32* %15, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %132, %130, %124, %89, %83, %67, %47
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @RCHECK(i32) #1

declare dso_local i32 @WRITE_VALUE(i32, i32) #1

declare dso_local i32 @WRITE_ULEB128(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
