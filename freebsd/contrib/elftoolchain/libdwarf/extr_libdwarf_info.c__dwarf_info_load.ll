; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_info.c__dwarf_info_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_info.c__dwarf_info_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i32, i64, i64 (i64, i64*, i32)*, i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_10__, i64, i64, i64, i64, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 }

@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@DW_DLE_CU_LENGTH_ERROR = common dso_local global i32 0, align 4
@cu_next = common dso_local global i32 0, align 4
@DW_DLE_VERSION_STAMP_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_info_load(%struct.TYPE_12__* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %5, align 4
  br label %280

27:                                               ; preds = %20
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %16, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %11, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %35 = icmp eq %struct.TYPE_11__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  store i32 %37, i32* %5, align 4
  br label %280

38:                                               ; preds = %27
  br label %58

39:                                               ; preds = %4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %5, align 4
  br label %280

46:                                               ; preds = %39
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %16, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 7
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %11, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %54 = icmp eq %struct.TYPE_11__* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  store i32 %56, i32* %5, align 4
  br label %280

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %38
  br label %59

59:                                               ; preds = %250, %58
  %60 = load i64, i64* %16, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %251

65:                                               ; preds = %59
  %66 = call %struct.TYPE_13__* @calloc(i32 1, i32 4)
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %10, align 8
  %67 = icmp eq %struct.TYPE_13__* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* @DW_DLE_MEMORY, align 4
  %72 = call i32 @DWARF_SET_ERROR(%struct.TYPE_12__* %69, i32* %70, i32 %71)
  %73 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %73, i32* %5, align 4
  br label %280

74:                                               ; preds = %65
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 13
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %77, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 12
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* %16, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 11
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 4
  %86 = load i64 (i64, i64*, i32)*, i64 (i64, i64*, i32)** %85, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 %86(i64 %89, i64* %16, i32 4)
  store i64 %90, i64* %14, align 8
  %91 = load i64, i64* %14, align 8
  %92 = icmp eq i64 %91, 4294967295
  br i1 %92, label %93, label %101

93:                                               ; preds = %74
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 4
  %96 = load i64 (i64, i64*, i32)*, i64 (i64, i64*, i32)** %95, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i64 %96(i64 %99, i64* %16, i32 8)
  store i64 %100, i64* %14, align 8
  store i32 8, i32* %12, align 4
  br label %102

101:                                              ; preds = %74
  store i32 4, i32* %12, align 4
  br label %102

102:                                              ; preds = %101, %93
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i64, i64* %14, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %16, align 8
  %111 = sub nsw i64 %109, %110
  %112 = icmp sgt i64 %106, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %102
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %115 = call i32 @free(%struct.TYPE_13__* %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* @DW_DLE_CU_LENGTH_ERROR, align 4
  %119 = call i32 @DWARF_SET_ERROR(%struct.TYPE_12__* %116, i32* %117, i32 %118)
  %120 = load i32, i32* @DW_DLE_CU_LENGTH_ERROR, align 4
  store i32 %120, i32* %5, align 4
  br label %280

121:                                              ; preds = %102
  %122 = load i64, i64* %16, align 8
  %123 = load i64, i64* %14, align 8
  %124 = add nsw i64 %122, %123
  store i64 %124, i64* %15, align 8
  %125 = load i64, i64* %8, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i64, i64* %15, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  br label %135

131:                                              ; preds = %121
  %132 = load i64, i64* %15, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %127
  %136 = load i64, i64* %14, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 10
  store i64 %136, i64* %138, align 8
  %139 = load i32, i32* %12, align 4
  %140 = icmp eq i32 %139, 4
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 4, i32 12
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 4
  %147 = load i64 (i64, i64*, i32)*, i64 (i64, i64*, i32)** %146, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i64 %147(i64 %150, i64* %16, i32 2)
  %152 = trunc i64 %151 to i32
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 4
  %157 = load i64 (i64, i64*, i32)*, i64 (i64, i64*, i32)** %156, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = call i64 %157(i64 %160, i64* %16, i32 %161)
  %163 = trunc i64 %162 to i32
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 4
  %173 = load i64 (i64, i64*, i32)*, i64 (i64, i64*, i32)** %172, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i64 %173(i64 %176, i64* %16, i32 1)
  %178 = trunc i64 %177 to i32
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 4
  %181 = load i64, i64* %15, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 9
  store i64 %181, i64* %183, align 8
  %184 = load i64, i64* %8, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %211, label %186

186:                                              ; preds = %135
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to i8*
  %195 = load i64, i64* %16, align 8
  %196 = getelementptr inbounds i8, i8* %194, i64 %195
  %197 = call i32 @memcpy(i32 %190, i8* %196, i32 8)
  %198 = load i64, i64* %16, align 8
  %199 = add nsw i64 %198, 8
  store i64 %199, i64* %16, align 8
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 4
  %202 = load i64 (i64, i64*, i32)*, i64 (i64, i64*, i32)** %201, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i32, i32* %12, align 4
  %207 = call i64 %202(i64 %205, i64* %16, i32 %206)
  %208 = trunc i64 %207 to i32
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 6
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %186, %135
  %212 = load i64, i64* %8, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 6
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %218 = load i32, i32* @cu_next, align 4
  %219 = call i32 @STAILQ_INSERT_TAIL(i32* %216, %struct.TYPE_13__* %217, i32 %218)
  br label %226

220:                                              ; preds = %211
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 5
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %224 = load i32, i32* @cu_next, align 4
  %225 = call i32 @STAILQ_INSERT_TAIL(i32* %222, %struct.TYPE_13__* %223, i32 %224)
  br label %226

226:                                              ; preds = %220, %214
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = icmp slt i32 %229, 2
  br i1 %230, label %236, label %231

231:                                              ; preds = %226
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = icmp sgt i32 %234, 4
  br i1 %235, label %236, label %242

236:                                              ; preds = %231, %226
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %238 = load i32*, i32** %9, align 8
  %239 = load i32, i32* @DW_DLE_VERSION_STAMP_ERROR, align 4
  %240 = call i32 @DWARF_SET_ERROR(%struct.TYPE_12__* %237, i32* %238, i32 %239)
  %241 = load i32, i32* @DW_DLE_VERSION_STAMP_ERROR, align 4
  store i32 %241, i32* %13, align 4
  br label %251

242:                                              ; preds = %231
  %243 = load i64, i64* %16, align 8
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 7
  store i64 %243, i64* %245, align 8
  %246 = load i64, i64* %15, align 8
  store i64 %246, i64* %16, align 8
  %247 = load i64, i64* %7, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %242
  br label %251

250:                                              ; preds = %242
  br label %59

251:                                              ; preds = %249, %236, %59
  %252 = load i64, i64* %8, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %266

254:                                              ; preds = %251
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp sge i64 %257, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %254
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  store i32 1, i32* %264, align 8
  br label %265

265:                                              ; preds = %262, %254
  br label %278

266:                                              ; preds = %251
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp sge i64 %269, %272
  br i1 %273, label %274, label %277

274:                                              ; preds = %266
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 2
  store i32 1, i32* %276, align 8
  br label %277

277:                                              ; preds = %274, %266
  br label %278

278:                                              ; preds = %277, %265
  %279 = load i32, i32* %13, align 4
  store i32 %279, i32* %5, align 4
  br label %280

280:                                              ; preds = %278, %113, %68, %55, %44, %36, %25
  %281 = load i32, i32* %5, align 4
  ret i32 %281
}

declare dso_local %struct.TYPE_13__* @calloc(i32, i32) #1

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
