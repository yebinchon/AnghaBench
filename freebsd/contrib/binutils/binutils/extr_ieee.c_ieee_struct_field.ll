; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_struct_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_struct_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i8*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ieee_nn_record = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ieee_atn_record_enum = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32)* @ieee_struct_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_struct_field(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee_handle*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.ieee_handle*
  store %struct.ieee_handle* %23, %struct.ieee_handle** %12, align 8
  %24 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %25 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = icmp ne %struct.TYPE_10__* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %5
  %29 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %30 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %37 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = call i32 @ieee_buffer_emptyp(i32* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %35, %28, %5
  %47 = phi i1 [ false, %28 ], [ false, %5 ], [ %45, %35 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %51 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %46
  %60 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %61 = call i32 @ieee_pop_unused_type(%struct.ieee_handle* %60)
  %62 = load i32, i32* @TRUE, align 4
  store i32 %62, i32* %6, align 4
  br label %336

63:                                               ; preds = %46
  %64 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %65 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %64, i32 0, i32 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %13, align 4
  %70 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %71 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %14, align 4
  %76 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %77 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %15, align 4
  %82 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %83 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %82, i32 0, i32 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %16, align 4
  %88 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %89 = call i32 @ieee_pop_type(%struct.ieee_handle* %88)
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %63
  %93 = load i32, i32* @TRUE, align 4
  %94 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %95 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %94, i32 0, i32 1
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  store i32 %93, i32* %98, align 4
  br label %99

99:                                               ; preds = %92, %63
  %100 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %101 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %100, i32 0, i32 1
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 6
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = icmp ne %struct.TYPE_8__* %105, null
  br i1 %106, label %107, label %256

107:                                              ; preds = %99
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @ieee_vis_to_flags(i32 %108)
  store i32 %109, i32* %19, align 4
  %110 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %111 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 6
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %20, align 4
  %118 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %119 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %120 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %119, i32 0, i32 1
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 6
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  %126 = call i64 @ieee_change_buffer(%struct.ieee_handle* %118, i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %151

128:                                              ; preds = %107
  %129 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %130 = load i32, i32* %20, align 4
  %131 = call i32 @ieee_write_asn(%struct.ieee_handle* %129, i32 %130, i32 100)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %128
  %134 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %135 = load i32, i32* %20, align 4
  %136 = load i32, i32* %19, align 4
  %137 = call i32 @ieee_write_asn(%struct.ieee_handle* %134, i32 %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %133
  %140 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %141 = load i32, i32* %20, align 4
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @ieee_write_atn65(%struct.ieee_handle* %140, i32 %141, i8* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %139
  %146 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %147 = load i32, i32* %20, align 4
  %148 = load i8*, i8** %8, align 8
  %149 = call i32 @ieee_write_atn65(%struct.ieee_handle* %146, i32 %147, i8* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %145, %139, %133, %128, %107
  %152 = load i32, i32* @FALSE, align 4
  store i32 %152, i32* %6, align 4
  br label %336

153:                                              ; preds = %145
  %154 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %155 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %154, i32 0, i32 1
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 6
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 4
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %255

165:                                              ; preds = %153
  %166 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %167 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %21, align 4
  %169 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %170 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = add i32 %171, 1
  store i32 %172, i32* %170, align 8
  %173 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %174 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %175 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %174, i32 0, i32 1
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 6
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 2
  %181 = call i64 @ieee_change_buffer(%struct.ieee_handle* %173, i32* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %252

183:                                              ; preds = %165
  %184 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %185 = load i64, i64* @ieee_nn_record, align 8
  %186 = trunc i64 %185 to i32
  %187 = call i32 @ieee_write_byte(%struct.ieee_handle* %184, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %252

189:                                              ; preds = %183
  %190 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %191 = load i32, i32* %21, align 4
  %192 = call i64 @ieee_write_number(%struct.ieee_handle* %190, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %252

194:                                              ; preds = %189
  %195 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %196 = call i64 @ieee_write_id(%struct.ieee_handle* %195, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %252

198:                                              ; preds = %194
  %199 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %200 = load i64, i64* @ieee_atn_record_enum, align 8
  %201 = trunc i64 %200 to i32
  %202 = call i32 @ieee_write_2bytes(%struct.ieee_handle* %199, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %252

204:                                              ; preds = %198
  %205 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %206 = load i32, i32* %21, align 4
  %207 = call i64 @ieee_write_number(%struct.ieee_handle* %205, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %252

209:                                              ; preds = %204
  %210 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %211 = call i64 @ieee_write_number(%struct.ieee_handle* %210, i32 0)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %252

213:                                              ; preds = %209
  %214 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %215 = call i64 @ieee_write_number(%struct.ieee_handle* %214, i32 62)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %252

217:                                              ; preds = %213
  %218 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %219 = call i64 @ieee_write_number(%struct.ieee_handle* %218, i32 80)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %252

221:                                              ; preds = %217
  %222 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %223 = call i64 @ieee_write_number(%struct.ieee_handle* %222, i32 4)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %252

225:                                              ; preds = %221
  %226 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %227 = load i32, i32* %21, align 4
  %228 = call i32 @ieee_write_asn(%struct.ieee_handle* %226, i32 %227, i32 82)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %252

230:                                              ; preds = %225
  %231 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %232 = load i32, i32* %21, align 4
  %233 = call i32 @ieee_write_asn(%struct.ieee_handle* %231, i32 %232, i32 3)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %252

235:                                              ; preds = %230
  %236 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %237 = load i32, i32* %21, align 4
  %238 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %239 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %238, i32 0, i32 1
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 4
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 @ieee_write_atn65(%struct.ieee_handle* %236, i32 %237, i8* %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %235
  %247 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %248 = load i32, i32* %21, align 4
  %249 = load i8*, i8** %8, align 8
  %250 = call i32 @ieee_write_atn65(%struct.ieee_handle* %247, i32 %248, i8* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %246, %235, %230, %225, %221, %217, %213, %209, %204, %198, %194, %189, %183, %165
  %253 = load i32, i32* @FALSE, align 4
  store i32 %253, i32* %6, align 4
  br label %336

254:                                              ; preds = %246
  br label %255

255:                                              ; preds = %254, %153
  br label %256

256:                                              ; preds = %255, %99
  %257 = load i32, i32* %13, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %267, label %259

259:                                              ; preds = %256
  %260 = load i32, i32* %10, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %259
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* %13, align 4
  %265 = mul i32 %264, 8
  %266 = icmp eq i32 %263, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %262, %259, %256
  %268 = load i32, i32* %9, align 4
  %269 = udiv i32 %268, 8
  store i32 %269, i32* %18, align 4
  br label %309

270:                                              ; preds = %262
  %271 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %272 = load i32, i32* %14, align 4
  %273 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %274 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %273, i32 0, i32 1
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @ieee_define_type(%struct.ieee_handle* %271, i32 0, i32 %272, i32 %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %303

281:                                              ; preds = %270
  %282 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %283 = call i64 @ieee_write_number(%struct.ieee_handle* %282, i32 103)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %303

285:                                              ; preds = %281
  %286 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %287 = load i32, i32* %14, align 4
  %288 = icmp ne i32 %287, 0
  %289 = zext i1 %288 to i64
  %290 = select i1 %288, i32 0, i32 1
  %291 = call i64 @ieee_write_number(%struct.ieee_handle* %286, i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %303

293:                                              ; preds = %285
  %294 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %295 = load i32, i32* %10, align 4
  %296 = call i64 @ieee_write_number(%struct.ieee_handle* %294, i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %293
  %299 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %300 = load i32, i32* %17, align 4
  %301 = call i64 @ieee_write_number(%struct.ieee_handle* %299, i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %305, label %303

303:                                              ; preds = %298, %293, %285, %281, %270
  %304 = load i32, i32* @FALSE, align 4
  store i32 %304, i32* %6, align 4
  br label %336

305:                                              ; preds = %298
  %306 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %307 = call i32 @ieee_pop_type(%struct.ieee_handle* %306)
  store i32 %307, i32* %17, align 4
  %308 = load i32, i32* %9, align 4
  store i32 %308, i32* %18, align 4
  br label %309

309:                                              ; preds = %305, %267
  %310 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %311 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %312 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %311, i32 0, i32 1
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 5
  %316 = call i64 @ieee_change_buffer(%struct.ieee_handle* %310, i32* %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %333

318:                                              ; preds = %309
  %319 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %320 = load i8*, i8** %8, align 8
  %321 = call i64 @ieee_write_id(%struct.ieee_handle* %319, i8* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %333

323:                                              ; preds = %318
  %324 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %325 = load i32, i32* %17, align 4
  %326 = call i64 @ieee_write_number(%struct.ieee_handle* %324, i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %323
  %329 = load %struct.ieee_handle*, %struct.ieee_handle** %12, align 8
  %330 = load i32, i32* %18, align 4
  %331 = call i64 @ieee_write_number(%struct.ieee_handle* %329, i32 %330)
  %332 = icmp ne i64 %331, 0
  br label %333

333:                                              ; preds = %328, %323, %318, %309
  %334 = phi i1 [ false, %323 ], [ false, %318 ], [ false, %309 ], [ %332, %328 ]
  %335 = zext i1 %334 to i32
  store i32 %335, i32* %6, align 4
  br label %336

336:                                              ; preds = %333, %303, %252, %151, %59
  %337 = load i32, i32* %6, align 4
  ret i32 %337
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ieee_buffer_emptyp(i32*) #1

declare dso_local i32 @ieee_pop_unused_type(%struct.ieee_handle*) #1

declare dso_local i32 @ieee_pop_type(%struct.ieee_handle*) #1

declare dso_local i32 @ieee_vis_to_flags(i32) #1

declare dso_local i64 @ieee_change_buffer(%struct.ieee_handle*, i32*) #1

declare dso_local i32 @ieee_write_asn(%struct.ieee_handle*, i32, i32) #1

declare dso_local i32 @ieee_write_atn65(%struct.ieee_handle*, i32, i8*) #1

declare dso_local i32 @ieee_write_byte(%struct.ieee_handle*, i32) #1

declare dso_local i64 @ieee_write_number(%struct.ieee_handle*, i32) #1

declare dso_local i64 @ieee_write_id(%struct.ieee_handle*, i8*) #1

declare dso_local i32 @ieee_write_2bytes(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_define_type(%struct.ieee_handle*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
