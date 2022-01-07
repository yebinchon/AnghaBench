; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_alloc.c_alloc_in_bmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_alloc.c_alloc_in_bmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"Bad allocation size: %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"aib\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Allocation doesn't work! Wanted %d, allocated at %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32, i32)* @alloc_in_bmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_in_bmp(%struct.super_block* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.quad_buffer_head, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, -16384
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 16383
  %24 = load i32, i32* %8, align 4
  %25 = sub i32 %24, 1
  %26 = xor i32 %25, -1
  %27 = and i32 %23, %26
  store i32 %27, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 4
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.super_block*, %struct.super_block** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 0, i32* %5, align 4
  br label %291

37:                                               ; preds = %30, %4
  %38 = load %struct.super_block*, %struct.super_block** %6, align 8
  %39 = call i32 @lock_super(%struct.super_block* %38)
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, -16384
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.super_block*, %struct.super_block** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 14
  %46 = call i32* @hpfs_map_bitmap(%struct.super_block* %43, i32 %45, %struct.quad_buffer_head* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %46, i32** %11, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %287

49:                                               ; preds = %42
  br label %56

50:                                               ; preds = %37
  %51 = load %struct.super_block*, %struct.super_block** %6, align 8
  %52 = call i32* @hpfs_map_dnode_bitmap(%struct.super_block* %51, %struct.quad_buffer_head* %10)
  store i32* %52, i32** %11, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %287

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %59, %60
  %62 = call i32 @tstbits(i32* %57, i32 %58, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add i32 %65, %66
  store i32 %67, i32* %18, align 4
  br label %230

68:                                               ; preds = %56
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %69, %70
  store i32 %71, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %72

72:                                               ; preds = %114, %68
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %75, %76
  %78 = call i32 @tstbits(i32* %73, i32 %74, i32 %77)
  store i32 %78, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %115

80:                                               ; preds = %72
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %15, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load i32, i32* %15, align 4
  %88 = sub i32 %87, 1
  %89 = load i32, i32* %8, align 4
  %90 = sub i32 %89, 1
  %91 = xor i32 %90, -1
  %92 = and i32 %88, %91
  %93 = load i32, i32* %8, align 4
  %94 = add i32 %92, %93
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %86, %80
  %96 = load i32, i32* %17, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %15, align 4
  %100 = lshr i32 %99, 5
  %101 = load i32, i32* %13, align 4
  %102 = lshr i32 %101, 5
  %103 = icmp ne i32 %100, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  store i32 1, i32* %17, align 4
  %105 = load i32, i32* %13, align 4
  %106 = and i32 %105, 31
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %104, %98
  br label %114

108:                                              ; preds = %95
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp ugt i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %115

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113, %107
  br label %72

115:                                              ; preds = %112, %72
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %15, align 4
  %121 = add i32 %119, %120
  store i32 %121, i32* %18, align 4
  br label %230

122:                                              ; preds = %115
  %123 = load i32, i32* %13, align 4
  %124 = lshr i32 %123, 5
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %225, %122
  %127 = load i32*, i32** %11, align 8
  %128 = load i32, i32* %14, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %126
  br label %220

134:                                              ; preds = %126
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %9, align 4
  %137 = add i32 %135, %136
  %138 = icmp uge i32 %137, 63
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load i32*, i32** %11, align 8
  %141 = load i32, i32* %14, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, -1
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %220

147:                                              ; preds = %139, %134
  %148 = load i32, i32* %14, align 4
  %149 = shl i32 %148, 5
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp ugt i32 %150, 0
  br i1 %151, label %152, label %169

152:                                              ; preds = %147
  %153 = load i32*, i32** %11, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sub i32 %154, 1
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %19, align 4
  br label %159

159:                                              ; preds = %163, %152
  %160 = load i32, i32* %19, align 4
  %161 = and i32 %160, -2147483648
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load i32, i32* %15, align 4
  %165 = add i32 %164, -1
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %19, align 4
  %167 = shl i32 %166, 1
  store i32 %167, i32* %19, align 4
  br label %159

168:                                              ; preds = %159
  br label %169

169:                                              ; preds = %168, %147
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 1
  br i1 %171, label %172, label %181

172:                                              ; preds = %169
  %173 = load i32, i32* %15, align 4
  %174 = sub i32 %173, 1
  %175 = load i32, i32* %8, align 4
  %176 = sub i32 %175, 1
  %177 = xor i32 %176, -1
  %178 = and i32 %174, %177
  %179 = load i32, i32* %8, align 4
  %180 = add i32 %178, %179
  store i32 %180, i32* %15, align 4
  br label %181

181:                                              ; preds = %172, %169
  br label %182

182:                                              ; preds = %211, %181
  %183 = load i32*, i32** %11, align 8
  %184 = load i32, i32* %15, align 4
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %9, align 4
  %187 = add i32 %185, %186
  %188 = call i32 @tstbits(i32* %183, i32 %184, i32 %187)
  store i32 %188, i32* %16, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %212

190:                                              ; preds = %182
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* %15, align 4
  %193 = add i32 %192, %191
  store i32 %193, i32* %15, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp ne i32 %194, 1
  br i1 %195, label %196, label %205

196:                                              ; preds = %190
  %197 = load i32, i32* %15, align 4
  %198 = sub i32 %197, 1
  %199 = load i32, i32* %8, align 4
  %200 = sub i32 %199, 1
  %201 = xor i32 %200, -1
  %202 = and i32 %198, %201
  %203 = load i32, i32* %8, align 4
  %204 = add i32 %202, %203
  store i32 %204, i32* %15, align 4
  br label %205

205:                                              ; preds = %196, %190
  %206 = load i32, i32* %15, align 4
  %207 = lshr i32 %206, 5
  %208 = load i32, i32* %14, align 4
  %209 = icmp ugt i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %212

211:                                              ; preds = %205
  br label %182

212:                                              ; preds = %210, %182
  %213 = load i32, i32* %16, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %15, align 4
  %218 = add i32 %216, %217
  store i32 %218, i32* %18, align 4
  br label %230

219:                                              ; preds = %212
  br label %220

220:                                              ; preds = %219, %146, %133
  %221 = load i32, i32* %14, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %14, align 4
  %223 = load i32, i32* %14, align 4
  %224 = and i32 %223, 511
  store i32 %224, i32* %14, align 4
  br label %225

225:                                              ; preds = %220
  %226 = load i32, i32* %14, align 4
  %227 = load i32, i32* %13, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %126, label %229

229:                                              ; preds = %225
  br label %230

230:                                              ; preds = %229, %215, %118, %64
  %231 = load i32, i32* %18, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %284

233:                                              ; preds = %230
  %234 = load %struct.super_block*, %struct.super_block** %6, align 8
  %235 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %234)
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %267

239:                                              ; preds = %233
  %240 = load i32, i32* %18, align 4
  %241 = ashr i32 %240, 14
  %242 = load i32, i32* %12, align 4
  %243 = lshr i32 %242, 14
  %244 = icmp ne i32 %241, %243
  br i1 %244, label %262, label %245

245:                                              ; preds = %239
  %246 = load i32*, i32** %11, align 8
  %247 = load i32, i32* %18, align 4
  %248 = and i32 %247, 16383
  %249 = ashr i32 %248, 5
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %246, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %8, align 4
  %254 = shl i32 1, %253
  %255 = sub nsw i32 %254, 1
  %256 = load i32, i32* %18, align 4
  %257 = and i32 %256, 31
  %258 = shl i32 %255, %257
  %259 = xor i32 %258, -1
  %260 = or i32 %252, %259
  %261 = icmp ne i32 %260, -1
  br i1 %261, label %262, label %267

262:                                              ; preds = %245, %239
  %263 = load %struct.super_block*, %struct.super_block** %6, align 8
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* %18, align 4
  %266 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %263, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %264, i32 %265)
  store i32 0, i32* %18, align 4
  br label %285

267:                                              ; preds = %245, %233
  %268 = load i32, i32* %8, align 4
  %269 = shl i32 1, %268
  %270 = sub nsw i32 %269, 1
  %271 = load i32, i32* %18, align 4
  %272 = and i32 %271, 31
  %273 = shl i32 %270, %272
  %274 = xor i32 %273, -1
  %275 = load i32*, i32** %11, align 8
  %276 = load i32, i32* %18, align 4
  %277 = and i32 %276, 16383
  %278 = ashr i32 %277, 5
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %275, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, %274
  store i32 %282, i32* %280, align 4
  %283 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %10)
  br label %284

284:                                              ; preds = %267, %230
  br label %285

285:                                              ; preds = %284, %262
  %286 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %10)
  br label %287

287:                                              ; preds = %285, %54, %48
  %288 = load %struct.super_block*, %struct.super_block** %6, align 8
  %289 = call i32 @unlock_super(%struct.super_block* %288)
  %290 = load i32, i32* %18, align 4
  store i32 %290, i32* %5, align 4
  br label %291

291:                                              ; preds = %287, %33
  %292 = load i32, i32* %5, align 4
  ret i32 %292
}

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32, ...) #1

declare dso_local i32 @lock_super(%struct.super_block*) #1

declare dso_local i32* @hpfs_map_bitmap(%struct.super_block*, i32, %struct.quad_buffer_head*, i8*) #1

declare dso_local i32* @hpfs_map_dnode_bitmap(%struct.super_block*, %struct.quad_buffer_head*) #1

declare dso_local i32 @tstbits(i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
