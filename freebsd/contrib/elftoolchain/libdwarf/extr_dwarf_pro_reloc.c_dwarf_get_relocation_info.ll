; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_reloc.c_dwarf_get_relocation_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_reloc.c_dwarf_get_relocation_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, i32, i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLC_SYMBOLIC_RELOCATIONS = common dso_local global i32 0, align 4
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@dre_next = common dso_local global i32 0, align 4
@drs_next = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_relocation_info(%struct.TYPE_17__* %0, i32* %1, i32* %2, i64* %3, %struct.TYPE_15__** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_15__**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store %struct.TYPE_15__** %4, %struct.TYPE_15__*** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %18 = icmp eq %struct.TYPE_17__* %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %6
  %20 = load i32*, i32** %9, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load i32*, i32** %10, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i64*, i64** %11, align 8
  %27 = icmp eq i64* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  %30 = icmp eq %struct.TYPE_15__** %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28, %25, %22, %19, %6
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %35 = call i32 @DWARF_SET_ERROR(%struct.TYPE_17__* %32, i32* %33, i32 %34)
  %36 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %36, i32* %7, align 4
  br label %221

37:                                               ; preds = %28
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DW_DLC_SYMBOLIC_RELOCATIONS, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %48 = call i32 @DWARF_SET_ERROR(%struct.TYPE_17__* %45, i32* %46, i32 %47)
  %49 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %49, i32* %7, align 4
  br label %221

50:                                               ; preds = %37
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %59 = call i32 @DWARF_SET_ERROR(%struct.TYPE_17__* %56, i32* %57, i32 %58)
  %60 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %60, i32* %7, align 4
  br label %221

61:                                               ; preds = %50
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = icmp eq %struct.TYPE_16__* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %70 = call i32 @DWARF_SET_ERROR(%struct.TYPE_17__* %67, i32* %68, i32 %69)
  %71 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %71, i32* %7, align 4
  br label %221

72:                                               ; preds = %61
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  store %struct.TYPE_16__* %75, %struct.TYPE_16__** %14, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = icmp ne %struct.TYPE_13__* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 7
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = icmp ne %struct.TYPE_14__* %83, null
  br label %85

85:                                               ; preds = %80, %72
  %86 = phi i1 [ false, %72 ], [ %84, %80 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %9, align 8
  store i32 %99, i32* %100, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 7
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %10, align 8
  store i32 %105, i32* %106, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %11, align 8
  store i64 %109, i64* %110, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  %114 = icmp eq %struct.TYPE_15__* %113, null
  br i1 %114, label %115, label %207

115:                                              ; preds = %85
  %116 = load i64*, i64** %11, align 8
  %117 = load i64, i64* %116, align 8
  %118 = call %struct.TYPE_15__* @calloc(i64 %117, i32 4)
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  store %struct.TYPE_15__* %118, %struct.TYPE_15__** %120, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = icmp eq %struct.TYPE_15__* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %115
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %127 = load i32*, i32** %13, align 8
  %128 = load i32, i32* @DW_DLE_MEMORY, align 4
  %129 = call i32 @DWARF_SET_ERROR(%struct.TYPE_17__* %126, i32* %127, i32 %128)
  %130 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %130, i32* %7, align 4
  br label %221

131:                                              ; preds = %115
  store i32 0, i32* %16, align 4
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 6
  %134 = call %struct.TYPE_16__* @STAILQ_FIRST(i32* %133)
  store %struct.TYPE_16__* %134, %struct.TYPE_16__** %15, align 8
  br label %135

135:                                              ; preds = %187, %131
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64*, i64** %11, align 8
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %137, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %143 = icmp ne %struct.TYPE_16__* %142, null
  br label %144

144:                                              ; preds = %141, %135
  %145 = phi i1 [ false, %135 ], [ %143, %141 ]
  br i1 %145, label %146, label %194

146:                                              ; preds = %144
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  %153 = load i32, i32* %16, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 3
  store i32 %149, i32* %156, align 4
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %161, align 8
  %163 = load i32, i32* %16, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 2
  store i32 %159, i32* %166, align 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %171, align 8
  %173 = load i32, i32* %16, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  store i32 %169, i32* %176, align 4
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  %183 = load i32, i32* %16, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  store i32 %179, i32* %186, align 4
  br label %187

187:                                              ; preds = %146
  %188 = load i32, i32* %16, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %16, align 4
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %191 = load i32, i32* @dre_next, align 4
  %192 = call i8* @STAILQ_NEXT(%struct.TYPE_16__* %190, i32 %191)
  %193 = bitcast i8* %192 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %193, %struct.TYPE_16__** %15, align 8
  br label %135

194:                                              ; preds = %144
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = load i64*, i64** %11, align 8
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %196, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %194
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %202 = icmp eq %struct.TYPE_16__* %201, null
  br label %203

203:                                              ; preds = %200, %194
  %204 = phi i1 [ false, %194 ], [ %202, %200 ]
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  br label %207

207:                                              ; preds = %203, %85
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %209, align 8
  %211 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  store %struct.TYPE_15__* %210, %struct.TYPE_15__** %211, align 8
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %213, align 8
  %215 = load i32, i32* @drs_next, align 4
  %216 = call i8* @STAILQ_NEXT(%struct.TYPE_16__* %214, i32 %215)
  %217 = bitcast i8* %216 to %struct.TYPE_16__*
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 2
  store %struct.TYPE_16__* %217, %struct.TYPE_16__** %219, align 8
  %220 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %220, i32* %7, align 4
  br label %221

221:                                              ; preds = %207, %125, %66, %55, %44, %31
  %222 = load i32, i32* %7, align 4
  ret i32 %222
}

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_15__* @calloc(i64, i32) #1

declare dso_local %struct.TYPE_16__* @STAILQ_FIRST(i32*) #1

declare dso_local i8* @STAILQ_NEXT(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
