; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_frame.c_dwarf_get_fde_info_for_all_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_frame.c_dwarf_get_fde_info_for_all_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLE_PC_NOT_IN_FDE_RANGE = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_REG_TABLE_SIZE = common dso_local global i64 0, align 8
@CFA = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_fde_info_for_all_regs(%struct.TYPE_18__* %0, i64 %1, %struct.TYPE_17__* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %19 = icmp ne %struct.TYPE_18__* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  br label %25

24:                                               ; preds = %5
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi %struct.TYPE_19__* [ %23, %20 ], [ null, %24 ]
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %12, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %28 = icmp eq %struct.TYPE_18__* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %31 = icmp eq %struct.TYPE_17__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i64*, i64** %10, align 8
  %34 = icmp eq i64* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32, %29, %25
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %39 = call i32 @DWARF_SET_ERROR(%struct.TYPE_19__* %36, i32* %37, i32 %38)
  %40 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %40, i32* %6, align 4
  br label %179

41:                                               ; preds = %32
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %43 = icmp ne %struct.TYPE_19__* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %61, label %51

51:                                               ; preds = %41
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = icmp sge i64 %52, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %51, %41
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* @DW_DLE_PC_NOT_IN_FDE_RANGE, align 4
  %65 = call i32 @DWARF_SET_ERROR(%struct.TYPE_19__* %62, i32* %63, i32 %64)
  %66 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %66, i32* %6, align 4
  br label %179

67:                                               ; preds = %51
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @_dwarf_frame_get_internal_table(%struct.TYPE_18__* %68, i64 %69, %struct.TYPE_16__** %13, i64* %14, i32* %70)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @DW_DLE_NONE, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %76, i32* %6, align 4
  br label %179

77:                                               ; preds = %67
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %15, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* @DW_REG_TABLE_SIZE, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %77
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @CFA, i32 0, i32 2), align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = load i64, i64* %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  store i32 %85, i32* %91, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @CFA, i32 0, i32 1), align 4
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = load i64, i64* %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  store i32 %92, i32* %98, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @CFA, i32 0, i32 0), align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = load i64, i64* %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  store i32 %99, i32* %105, align 4
  br label %106

106:                                              ; preds = %84, %77
  store i32 0, i32* %16, align 4
  br label %107

107:                                              ; preds = %172, %106
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* @DW_REG_TABLE_SIZE, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32, i32* %16, align 4
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br label %118

118:                                              ; preds = %112, %107
  %119 = phi i1 [ false, %107 ], [ %117, %112 ]
  br i1 %119, label %120, label %175

120:                                              ; preds = %118
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %15, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %172

126:                                              ; preds = %120
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 2
  store i32 %134, i32* %141, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = load i32, i32* %16, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  store i32 %149, i32* %156, align 4
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  store i32 %164, i32* %171, align 4
  br label %172

172:                                              ; preds = %126, %125
  %173 = load i32, i32* %16, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %16, align 4
  br label %107

175:                                              ; preds = %118
  %176 = load i64, i64* %14, align 8
  %177 = load i64*, i64** %10, align 8
  store i64 %176, i64* %177, align 8
  %178 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %178, i32* %6, align 4
  br label %179

179:                                              ; preds = %175, %75, %61, %35
  %180 = load i32, i32* %6, align 4
  ret i32 %180
}

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_dwarf_frame_get_internal_table(%struct.TYPE_18__*, i64, %struct.TYPE_16__**, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
