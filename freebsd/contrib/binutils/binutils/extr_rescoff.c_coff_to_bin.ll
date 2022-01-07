; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rescoff.c_coff_to_bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rescoff.c_coff_to_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i64, %struct.TYPE_12__, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32* }
%struct.coff_write_info = type { i32, i32, %struct.TYPE_13__, i32, %struct.TYPE_17__, %struct.TYPE_17__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.extern_res_directory = type { i32*, i32*, i32*, i32*, i32, i32 }
%struct.extern_res_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.coff_write_info*)* @coff_to_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coff_to_bin(%struct.TYPE_16__* %0, %struct.coff_write_info* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.coff_write_info*, align 8
  %5 = alloca %struct.extern_res_directory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.extern_res_entry*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.coff_write_info* %1, %struct.coff_write_info** %4, align 8
  %12 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %13 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %12, i32 0, i32 4
  %14 = call i32* @coff_alloc(%struct.TYPE_17__* %13, i32 40)
  %15 = bitcast i32* %14 to %struct.extern_res_directory*
  store %struct.extern_res_directory* %15, %struct.extern_res_directory** %5, align 8
  %16 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %17 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.extern_res_directory*, %struct.extern_res_directory** %5, align 8
  %20 = getelementptr inbounds %struct.extern_res_directory, %struct.extern_res_directory* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @windres_put_32(i32 %18, i32 %21, i32 %24)
  %26 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %27 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.extern_res_directory*, %struct.extern_res_directory** %5, align 8
  %30 = getelementptr inbounds %struct.extern_res_directory, %struct.extern_res_directory* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @windres_put_32(i32 %28, i32 %31, i32 %34)
  %36 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %37 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.extern_res_directory*, %struct.extern_res_directory** %5, align 8
  %40 = getelementptr inbounds %struct.extern_res_directory, %struct.extern_res_directory* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @windres_put_16(i32 %38, i32* %41, i32 %44)
  %46 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %47 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.extern_res_directory*, %struct.extern_res_directory** %5, align 8
  %50 = getelementptr inbounds %struct.extern_res_directory, %struct.extern_res_directory* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @windres_put_16(i32 %48, i32* %51, i32 %54)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %8, align 8
  br label %59

59:                                               ; preds = %75, %2
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = icmp ne %struct.TYPE_15__* %60, null
  br i1 %61, label %62, label %79

62:                                               ; preds = %59
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %74

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  store %struct.TYPE_15__* %78, %struct.TYPE_15__** %8, align 8
  br label %59

79:                                               ; preds = %59
  %80 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %81 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.extern_res_directory*, %struct.extern_res_directory** %5, align 8
  %84 = getelementptr inbounds %struct.extern_res_directory, %struct.extern_res_directory* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @windres_put_16(i32 %82, i32* %85, i32 %86)
  %88 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %89 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.extern_res_directory*, %struct.extern_res_directory** %5, align 8
  %92 = getelementptr inbounds %struct.extern_res_directory, %struct.extern_res_directory* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @windres_put_16(i32 %90, i32* %93, i32 %94)
  %96 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %97 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %96, i32 0, i32 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 8
  %103 = trunc i64 %102 to i32
  %104 = call i32* @coff_alloc(%struct.TYPE_17__* %97, i32 %103)
  %105 = bitcast i32* %104 to %struct.extern_res_entry*
  store %struct.extern_res_entry* %105, %struct.extern_res_entry** %9, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  store %struct.TYPE_15__* %108, %struct.TYPE_15__** %8, align 8
  br label %109

109:                                              ; preds = %254, %79
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %111 = icmp ne %struct.TYPE_15__* %110, null
  br i1 %111, label %112, label %260

112:                                              ; preds = %109
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %112
  %119 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %120 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.extern_res_entry*, %struct.extern_res_entry** %9, align 8
  %123 = getelementptr inbounds %struct.extern_res_entry, %struct.extern_res_entry* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @windres_put_32(i32 %121, i32 %124, i32 %129)
  br label %204

131:                                              ; preds = %112
  %132 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %133 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.extern_res_entry*, %struct.extern_res_entry** %9, align 8
  %136 = getelementptr inbounds %struct.extern_res_entry, %struct.extern_res_entry* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %139 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %142 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %140, %144
  %146 = or i32 -2147483648, %145
  %147 = call i32 @windres_put_32(i32 %134, i32 %137, i32 %146)
  %148 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %149 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %148, i32 0, i32 5
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = mul nsw i32 %155, 2
  %157 = add nsw i32 %156, 2
  %158 = call i32* @coff_alloc(%struct.TYPE_17__* %149, i32 %157)
  store i32* %158, i32** %10, align 8
  %159 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %160 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %10, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @windres_put_16(i32 %161, i32* %162, i32 %168)
  store i32 0, i32* %11, align 4
  br label %170

170:                                              ; preds = %200, %131
  %171 = load i32, i32* %11, align 4
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %171, %177
  br i1 %178, label %179, label %203

179:                                              ; preds = %170
  %180 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %181 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %10, align 8
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = mul i64 %186, 4
  %188 = getelementptr inbounds i32, i32* %183, i64 %187
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @windres_put_16(i32 %182, i32* %188, i32 %198)
  br label %200

200:                                              ; preds = %179
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %11, align 4
  br label %170

203:                                              ; preds = %170
  br label %204

204:                                              ; preds = %203, %118
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %227

209:                                              ; preds = %204
  %210 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %211 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.extern_res_entry*, %struct.extern_res_entry** %9, align 8
  %214 = getelementptr inbounds %struct.extern_res_entry, %struct.extern_res_entry* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %217 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = or i32 -2147483648, %219
  %221 = call i32 @windres_put_32(i32 %212, i32 %215, i32 %220)
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %224, align 8
  %226 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  call void @coff_to_bin(%struct.TYPE_16__* %225, %struct.coff_write_info* %226)
  br label %253

227:                                              ; preds = %204
  %228 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %229 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.extern_res_entry*, %struct.extern_res_entry** %9, align 8
  %232 = getelementptr inbounds %struct.extern_res_entry, %struct.extern_res_entry* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %235 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %238 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %236, %239
  %241 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %242 = getelementptr inbounds %struct.coff_write_info, %struct.coff_write_info* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %240, %244
  %246 = call i32 @windres_put_32(i32 %230, i32 %233, i32 %245)
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.coff_write_info*, %struct.coff_write_info** %4, align 8
  %252 = call i32 @coff_res_to_bin(i32 %250, %struct.coff_write_info* %251)
  br label %253

253:                                              ; preds = %227, %209
  br label %254

254:                                              ; preds = %253
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 3
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %256, align 8
  store %struct.TYPE_15__* %257, %struct.TYPE_15__** %8, align 8
  %258 = load %struct.extern_res_entry*, %struct.extern_res_entry** %9, align 8
  %259 = getelementptr inbounds %struct.extern_res_entry, %struct.extern_res_entry* %258, i32 1
  store %struct.extern_res_entry* %259, %struct.extern_res_entry** %9, align 8
  br label %109

260:                                              ; preds = %109
  ret void
}

declare dso_local i32* @coff_alloc(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @windres_put_32(i32, i32, i32) #1

declare dso_local i32 @windres_put_16(i32, i32*, i32) #1

declare dso_local i32 @coff_res_to_bin(i32, %struct.coff_write_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
