; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_frame.c__dwarf_frame_add_fde.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_frame.c__dwarf_frame_add_fde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 (i32, i32*, i32)* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i8*, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_24__*, %struct.TYPE_21__*, %struct.TYPE_23__* }

@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@fde_next = common dso_local global i32 0, align 4
@DW_DLE_DEBUG_FRAME_LENGTH_BAD = common dso_local global i32 0, align 4
@DW_DLE_NO_CIE_FOR_FDE = common dso_local global i32 0, align 4
@DW_DLE_NO_ENTRY = common dso_local global i64 0, align 8
@DW_DLE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_21__*, %struct.TYPE_20__*, i32*, i32, i32*)* @_dwarf_frame_add_fde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dwarf_frame_add_fde(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1, %struct.TYPE_20__* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %21 = call %struct.TYPE_22__* @calloc(i32 1, i32 4)
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %15, align 8
  %22 = icmp eq %struct.TYPE_22__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %6
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = load i32, i32* @DW_DLE_MEMORY, align 4
  %27 = call i32 @DWARF_SET_ERROR(%struct.TYPE_23__* %24, i32* %25, i32 %26)
  %28 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %28, i32* %7, align 4
  br label %316

29:                                               ; preds = %6
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %33 = load i32, i32* @fde_next, align 4
  %34 = call i32 @STAILQ_INSERT_TAIL(i32* %31, %struct.TYPE_22__* %32, i32 %33)
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 12
  store %struct.TYPE_23__* %35, %struct.TYPE_23__** %37, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 11
  store %struct.TYPE_21__* %38, %struct.TYPE_21__** %40, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %43, %45
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %54, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 %55(i32 %58, i32* %59, i32 4)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %72

63:                                               ; preds = %29
  store i32 8, i32* %19, align 4
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %65, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 %66(i32 %69, i32* %70, i32 8)
  store i32 %71, i32* %17, align 4
  br label %73

72:                                               ; preds = %29
  store i32 4, i32* %19, align 4
  br label %73

73:                                               ; preds = %72, %63
  %74 = load i32, i32* %17, align 4
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %77, %79
  %81 = icmp sgt i32 %74, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %73
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* @DW_DLE_DEBUG_FRAME_LENGTH_BAD, align 4
  %86 = call i32 @DWARF_SET_ERROR(%struct.TYPE_23__* %83, i32* %84, i32 %85)
  %87 = load i32, i32* @DW_DLE_DEBUG_FRAME_LENGTH_BAD, align 4
  store i32 %87, i32* %7, align 4
  br label %316

88:                                               ; preds = %73
  %89 = load i32, i32* %17, align 4
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %124

94:                                               ; preds = %88
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %96, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 %97(i32 %100, i32* %101, i32 4)
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 4, %109
  %111 = sub nsw i32 %106, %110
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %112, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %94
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = load i32, i32* @DW_DLE_NO_CIE_FOR_FDE, align 4
  %121 = call i32 @DWARF_SET_ERROR(%struct.TYPE_23__* %118, i32* %119, i32 %120)
  %122 = load i32, i32* @DW_DLE_NO_CIE_FOR_FDE, align 4
  store i32 %122, i32* %7, align 4
  br label %316

123:                                              ; preds = %94
  br label %139

124:                                              ; preds = %88
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %126, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* %19, align 4
  %133 = call i32 %127(i32 %130, i32* %131, i32 %132)
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %16, align 4
  br label %139

139:                                              ; preds = %124, %123
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %141 = load i32, i32* %16, align 4
  %142 = call i64 @_dwarf_frame_find_cie(%struct.TYPE_21__* %140, i32 %141, %struct.TYPE_24__** %14)
  %143 = load i64, i64* @DW_DLE_NO_ENTRY, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %139
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %149 = load i32*, i32** %13, align 8
  %150 = call i32 @_dwarf_frame_add_cie(%struct.TYPE_23__* %146, %struct.TYPE_21__* %147, %struct.TYPE_20__* %148, i32* %16, %struct.TYPE_24__** %14, i32* %149)
  store i32 %150, i32* %20, align 4
  %151 = load i32, i32* %20, align 4
  %152 = load i32, i32* @DW_DLE_NONE, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = load i32, i32* %20, align 4
  store i32 %155, i32* %7, align 4
  br label %316

156:                                              ; preds = %145
  br label %157

157:                                              ; preds = %156, %139
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 10
  store %struct.TYPE_24__* %158, %struct.TYPE_24__** %160, align 8
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %210

163:                                              ; preds = %157
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %11, align 8
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %11, align 8
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %175, %177
  %179 = load i32*, i32** %13, align 8
  %180 = call i32 @_dwarf_frame_read_lsb_encoded(%struct.TYPE_23__* %164, %struct.TYPE_24__* %165, i32* %18, i32 %168, i32* %169, i32 %172, i32 %178, i32* %179)
  store i32 %180, i32* %20, align 4
  %181 = load i32, i32* %20, align 4
  %182 = load i32, i32* @DW_DLE_NONE, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %163
  %185 = load i32, i32* %20, align 4
  store i32 %185, i32* %7, align 4
  br label %316

186:                                              ; preds = %163
  %187 = load i32, i32* %18, align 4
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 8
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32*, i32** %11, align 8
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i32*, i32** %13, align 8
  %200 = call i32 @_dwarf_frame_read_lsb_encoded(%struct.TYPE_23__* %190, %struct.TYPE_24__* %191, i32* %18, i32 %194, i32* %195, i32 %198, i32 0, i32* %199)
  store i32 %200, i32* %20, align 4
  %201 = load i32, i32* %20, align 4
  %202 = load i32, i32* @DW_DLE_NONE, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %186
  %205 = load i32, i32* %20, align 4
  store i32 %205, i32* %7, align 4
  br label %316

206:                                              ; preds = %186
  %207 = load i32, i32* %18, align 4
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 5
  store i32 %207, i32* %209, align 4
  br label %237

210:                                              ; preds = %157
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 0
  %213 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %212, align 8
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %11, align 8
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 %213(i32 %216, i32* %217, i32 %220)
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 4
  store i32 %221, i32* %223, align 8
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 0
  %226 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %225, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %11, align 8
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 %226(i32 %229, i32* %230, i32 %233)
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 5
  store i32 %234, i32* %236, align 4
  br label %237

237:                                              ; preds = %210, %206
  %238 = load i32, i32* %12, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %269

240:                                              ; preds = %237
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp eq i32 %245, 122
  br i1 %246, label %247, label %269

247:                                              ; preds = %240
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %11, align 8
  %252 = call i32 @_dwarf_read_uleb128(i32 %250, i32* %251)
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 6
  store i32 %252, i32* %254, align 8
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %11, align 8
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %257, %259
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 7
  store i32 %260, i32* %262, align 4
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 6
  %265 = load i32, i32* %264, align 8
  %266 = load i32*, i32** %11, align 8
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, %265
  store i32 %268, i32* %266, align 4
  br label %269

269:                                              ; preds = %247, %240, %237
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32*, i32** %11, align 8
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %272, %274
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 8
  store i32 %275, i32* %277, align 8
  %278 = load i32, i32* %19, align 4
  %279 = icmp eq i32 %278, 4
  br i1 %279, label %280, label %292

280:                                              ; preds = %269
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, 4
  %285 = load i32, i32* %17, align 4
  %286 = add nsw i32 %284, %285
  %287 = load i32*, i32** %11, align 8
  %288 = load i32, i32* %287, align 4
  %289 = sub nsw i32 %286, %288
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 9
  store i32 %289, i32* %291, align 4
  br label %304

292:                                              ; preds = %269
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = add nsw i32 %295, 12
  %297 = load i32, i32* %17, align 4
  %298 = add nsw i32 %296, %297
  %299 = load i32*, i32** %11, align 8
  %300 = load i32, i32* %299, align 4
  %301 = sub nsw i32 %298, %300
  %302 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %303 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %302, i32 0, i32 9
  store i32 %301, i32* %303, align 4
  br label %304

304:                                              ; preds = %292, %280
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 9
  %307 = load i32, i32* %306, align 4
  %308 = load i32*, i32** %11, align 8
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %309, %307
  store i32 %310, i32* %308, align 4
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %312, align 4
  %315 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %315, i32* %7, align 4
  br label %316

316:                                              ; preds = %304, %204, %184, %154, %117, %82, %23
  %317 = load i32, i32* %7, align 4
  ret i32 %317
}

declare dso_local %struct.TYPE_22__* @calloc(i32, i32) #1

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_22__*, i32) #1

declare dso_local i64 @_dwarf_frame_find_cie(%struct.TYPE_21__*, i32, %struct.TYPE_24__**) #1

declare dso_local i32 @_dwarf_frame_add_cie(%struct.TYPE_23__*, %struct.TYPE_21__*, %struct.TYPE_20__*, i32*, %struct.TYPE_24__**, i32*) #1

declare dso_local i32 @_dwarf_frame_read_lsb_encoded(%struct.TYPE_23__*, %struct.TYPE_24__*, i32*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @_dwarf_read_uleb128(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
