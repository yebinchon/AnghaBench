; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_deflate/extr_deftree.c_build_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_deflate/extr_deftree.c_build_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32*, i32, %struct.TYPE_17__*, i64*, i32, i32 }
%struct.TYPE_17__ = type { i32, i64, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_17__* }

@HEAP_SIZE = common dso_local global i64 0, align 8
@SMALLEST = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*)* @build_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_tree(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %5, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %6, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  store i32 -1, i32* %10, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* @HEAP_SIZE, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %65, %2
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %68

34:                                               ; preds = %30
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  store i32 %43, i32* %51, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 5
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store i64 0, i64* %57, align 8
  br label %64

58:                                               ; preds = %34
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %58, %42
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %30

68:                                               ; preds = %30
  br label %69

69:                                               ; preds = %121, %68
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ult i64 %72, 2
  br i1 %73, label %74, label %122

74:                                               ; preds = %69
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %81

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %77
  %82 = phi i32 [ %79, %77 ], [ 0, %80 ]
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  store i32 %82, i32* %90, align 4
  store i32 %82, i32* %11, align 4
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 5
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %107 = icmp ne %struct.TYPE_17__* %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %81
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = sub nsw i64 %118, %114
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 8
  br label %121

121:                                              ; preds = %108, %81
  br label %69

122:                                              ; preds = %69
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = udiv i64 %128, 2
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %140, %122
  %132 = load i32, i32* %8, align 4
  %133 = icmp sge i32 %132, 1
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = call i32 @pqdownheap(%struct.TYPE_16__* %135, %struct.TYPE_17__* %136, i64 %138)
  br label %140

140:                                              ; preds = %134
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %8, align 4
  br label %131

143:                                              ; preds = %131
  %144 = load i32, i32* %7, align 4
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %237, %143
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @pqremove(%struct.TYPE_16__* %146, %struct.TYPE_17__* %147, i32 %148)
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* @SMALLEST, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %162, -1
  store i64 %163, i64* %161, align 8
  %164 = getelementptr inbounds i32, i32* %159, i64 %163
  store i32 %156, i32* %164, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = add i64 %171, -1
  store i64 %172, i64* %170, align 8
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  store i32 %165, i32* %173, align 4
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %179, %185
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  store i32 %186, i32* %191, align 8
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 5
  %194 = load i64*, i64** %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %194, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 5
  %201 = load i64*, i64** %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = call i64 @max(i64 %198, i64 %205)
  %207 = add nsw i64 %206, 1
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 5
  %210 = load i64*, i64** %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  store i64 %207, i64* %213, align 8
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 1
  store i64 %215, i64* %220, align 8
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 1
  store i64 %215, i64* %225, align 8
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %11, align 4
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = load i64, i64* @SMALLEST, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  store i32 %226, i32* %232, align 4
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %235 = load i64, i64* @SMALLEST, align 8
  %236 = call i32 @pqdownheap(%struct.TYPE_16__* %233, %struct.TYPE_17__* %234, i64 %235)
  br label %237

237:                                              ; preds = %145
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp uge i64 %240, 2
  br i1 %241, label %145, label %242

242:                                              ; preds = %237
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = load i64, i64* @SMALLEST, align 8
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = add i64 %254, -1
  store i64 %255, i64* %253, align 8
  %256 = getelementptr inbounds i32, i32* %251, i64 %255
  store i32 %248, i32* %256, align 4
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %259 = call i32 @gen_bitlen(%struct.TYPE_16__* %257, %struct.TYPE_15__* %258)
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %261 = load i32, i32* %10, align 4
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @gen_codes(%struct.TYPE_17__* %260, i32 %261, i32 %264)
  ret void
}

declare dso_local i32 @pqdownheap(%struct.TYPE_16__*, %struct.TYPE_17__*, i64) #1

declare dso_local i32 @pqremove(%struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @gen_bitlen(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @gen_codes(%struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
