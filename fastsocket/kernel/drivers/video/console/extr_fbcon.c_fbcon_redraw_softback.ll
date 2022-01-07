; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_redraw_softback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_redraw_softback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i64, i64 }
%struct.display = type { i32 }

@softback_curr = common dso_local global i64 0, align 8
@softback_in = common dso_local global i64 0, align 8
@softback_lines = common dso_local global i64 0, align 8
@softback_top = common dso_local global i64 0, align 8
@softback_buf = common dso_local global i64 0, align 8
@softback_end = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.display*, i64)* @fbcon_redraw_softback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_redraw_softback(%struct.vc_data* %0, %struct.display* %1, i64 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.display*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16*, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store %struct.display* %1, %struct.display** %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %20 = load i64, i64* @softback_curr, align 8
  %21 = inttoptr i64 %20 to i16*
  store i16* %21, i16** %8, align 8
  %22 = load i16*, i16** %8, align 8
  %23 = load i64, i64* @softback_in, align 8
  %24 = inttoptr i64 %23 to i16*
  %25 = icmp eq i16* %22, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i16*
  store i16* %30, i16** %8, align 8
  br label %31

31:                                               ; preds = %26, %3
  %32 = load i64, i64* @softback_curr, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %35 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = mul nsw i64 %33, %36
  %38 = add nsw i64 %32, %37
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @softback_lines, align 8
  %41 = sub nsw i64 %40, %39
  store i64 %41, i64* @softback_lines, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %94

44:                                               ; preds = %31
  %45 = load i64, i64* @softback_curr, align 8
  %46 = load i64, i64* @softback_top, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %44
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @softback_buf, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load i64, i64* @softback_end, align 8
  %54 = load i64, i64* @softback_buf, align 8
  %55 = sub i64 %53, %54
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @softback_top, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %52
  %62 = load i64, i64* @softback_top, align 8
  %63 = load i64, i64* %10, align 8
  %64 = sub i64 %62, %63
  %65 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %66 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = udiv i64 %64, %67
  %69 = load i64, i64* @softback_lines, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* @softback_lines, align 8
  %71 = load i64, i64* @softback_top, align 8
  store i64 %71, i64* %10, align 8
  br label %72

72:                                               ; preds = %61, %52
  br label %93

73:                                               ; preds = %48, %44
  %74 = load i64, i64* @softback_curr, align 8
  %75 = load i64, i64* @softback_top, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* @softback_top, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load i64, i64* @softback_top, align 8
  %83 = load i64, i64* %10, align 8
  %84 = sub i64 %82, %83
  %85 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %86 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = udiv i64 %84, %87
  %89 = load i64, i64* @softback_lines, align 8
  %90 = sub i64 %89, %88
  store i64 %90, i64* @softback_lines, align 8
  %91 = load i64, i64* @softback_top, align 8
  store i64 %91, i64* %10, align 8
  br label %92

92:                                               ; preds = %81, %77, %73
  br label %93

93:                                               ; preds = %92, %72
  br label %126

94:                                               ; preds = %31
  %95 = load i64, i64* @softback_curr, align 8
  %96 = load i64, i64* @softback_in, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* @softback_end, align 8
  %101 = icmp uge i64 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = load i64, i64* @softback_buf, align 8
  %104 = load i64, i64* @softback_end, align 8
  %105 = sub i64 %103, %104
  %106 = load i64, i64* %10, align 8
  %107 = add i64 %106, %105
  store i64 %107, i64* %10, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* @softback_in, align 8
  %110 = icmp ugt i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = load i64, i64* @softback_in, align 8
  store i64 %112, i64* %10, align 8
  store i64 0, i64* @softback_lines, align 8
  br label %113

113:                                              ; preds = %111, %102
  br label %125

114:                                              ; preds = %98, %94
  %115 = load i64, i64* @softback_curr, align 8
  %116 = load i64, i64* @softback_in, align 8
  %117 = icmp sle i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* @softback_in, align 8
  %121 = icmp ugt i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i64, i64* @softback_in, align 8
  store i64 %123, i64* %10, align 8
  store i64 0, i64* @softback_lines, align 8
  br label %124

124:                                              ; preds = %122, %118, %114
  br label %125

125:                                              ; preds = %124, %113
  br label %126

126:                                              ; preds = %125, %93
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* @softback_curr, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %303

131:                                              ; preds = %126
  %132 = load i64, i64* %10, align 8
  store i64 %132, i64* @softback_curr, align 8
  %133 = load i64, i64* @softback_curr, align 8
  %134 = inttoptr i64 %133 to i16*
  store i16* %134, i16** %9, align 8
  %135 = load i16*, i16** %9, align 8
  %136 = load i64, i64* @softback_in, align 8
  %137 = inttoptr i64 %136 to i16*
  %138 = icmp eq i16* %135, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %131
  %140 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %141 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i16*
  store i16* %143, i16** %9, align 8
  br label %144

144:                                              ; preds = %139, %131
  br label %145

145:                                              ; preds = %302, %144
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %7, align 4
  %148 = icmp ne i32 %146, 0
  br i1 %148, label %149, label %303

149:                                              ; preds = %145
  store i32 0, i32* %15, align 4
  store i16 1, i16* %16, align 2
  %150 = load i16*, i16** %9, align 8
  store i16* %150, i16** %12, align 8
  %151 = load i16*, i16** %9, align 8
  %152 = call i16* @advance_row(i16* %151, i32 1)
  store i16* %152, i16** %13, align 8
  br label %153

153:                                              ; preds = %243, %149
  %154 = load i16*, i16** %9, align 8
  %155 = call zeroext i16 @scr_readw(i16* %154)
  store i16 %155, i16* %14, align 2
  %156 = load i16, i16* %16, align 2
  %157 = zext i16 %156 to i32
  %158 = load i16, i16* %14, align 2
  %159 = zext i16 %158 to i32
  %160 = and i32 %159, 65280
  %161 = icmp ne i32 %157, %160
  br i1 %161, label %162, label %195

162:                                              ; preds = %153
  %163 = load i16, i16* %14, align 2
  %164 = zext i16 %163 to i32
  %165 = and i32 %164, 65280
  %166 = trunc i32 %165 to i16
  store i16 %166, i16* %16, align 2
  %167 = load i16*, i16** %9, align 8
  %168 = load i16*, i16** %12, align 8
  %169 = icmp ugt i16* %167, %168
  br i1 %169, label %170, label %194

170:                                              ; preds = %162
  %171 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %172 = load i16*, i16** %12, align 8
  %173 = load i16*, i16** %9, align 8
  %174 = load i16*, i16** %12, align 8
  %175 = ptrtoint i16* %173 to i64
  %176 = ptrtoint i16* %174 to i64
  %177 = sub i64 %175, %176
  %178 = sdiv exact i64 %177, 2
  %179 = trunc i64 %178 to i32
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @fbcon_putcs(%struct.vc_data* %171, i16* %172, i32 %179, i32 %180, i32 %181)
  %183 = load i16*, i16** %9, align 8
  %184 = load i16*, i16** %12, align 8
  %185 = ptrtoint i16* %183 to i64
  %186 = ptrtoint i16* %184 to i64
  %187 = sub i64 %185, %186
  %188 = sdiv exact i64 %187, 2
  %189 = load i32, i32* %15, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %15, align 4
  %193 = load i16*, i16** %9, align 8
  store i16* %193, i16** %12, align 8
  br label %194

194:                                              ; preds = %170, %162
  br label %195

195:                                              ; preds = %194, %153
  %196 = load i16, i16* %14, align 2
  %197 = zext i16 %196 to i32
  %198 = load i16*, i16** %8, align 8
  %199 = call zeroext i16 @scr_readw(i16* %198)
  %200 = zext i16 %199 to i32
  %201 = icmp eq i32 %197, %200
  br i1 %201, label %202, label %238

202:                                              ; preds = %195
  %203 = load i16*, i16** %9, align 8
  %204 = load i16*, i16** %12, align 8
  %205 = icmp ugt i16* %203, %204
  br i1 %205, label %206, label %232

206:                                              ; preds = %202
  %207 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %208 = load i16*, i16** %12, align 8
  %209 = load i16*, i16** %9, align 8
  %210 = load i16*, i16** %12, align 8
  %211 = ptrtoint i16* %209 to i64
  %212 = ptrtoint i16* %210 to i64
  %213 = sub i64 %211, %212
  %214 = sdiv exact i64 %213, 2
  %215 = trunc i64 %214 to i32
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* %15, align 4
  %218 = call i32 @fbcon_putcs(%struct.vc_data* %207, i16* %208, i32 %215, i32 %216, i32 %217)
  %219 = load i16*, i16** %9, align 8
  %220 = load i16*, i16** %12, align 8
  %221 = ptrtoint i16* %219 to i64
  %222 = ptrtoint i16* %220 to i64
  %223 = sub i64 %221, %222
  %224 = sdiv exact i64 %223, 2
  %225 = add nsw i64 %224, 1
  %226 = load i32, i32* %15, align 4
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %227, %225
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %15, align 4
  %230 = load i16*, i16** %9, align 8
  %231 = getelementptr inbounds i16, i16* %230, i64 1
  store i16* %231, i16** %12, align 8
  br label %237

232:                                              ; preds = %202
  %233 = load i32, i32* %15, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %15, align 4
  %235 = load i16*, i16** %12, align 8
  %236 = getelementptr inbounds i16, i16* %235, i32 1
  store i16* %236, i16** %12, align 8
  br label %237

237:                                              ; preds = %232, %206
  br label %238

238:                                              ; preds = %237, %195
  %239 = load i16*, i16** %9, align 8
  %240 = getelementptr inbounds i16, i16* %239, i32 1
  store i16* %240, i16** %9, align 8
  %241 = load i16*, i16** %8, align 8
  %242 = getelementptr inbounds i16, i16* %241, i32 1
  store i16* %242, i16** %8, align 8
  br label %243

243:                                              ; preds = %238
  %244 = load i16*, i16** %9, align 8
  %245 = load i16*, i16** %13, align 8
  %246 = icmp ult i16* %244, %245
  br i1 %246, label %153, label %247

247:                                              ; preds = %243
  %248 = load i16*, i16** %9, align 8
  %249 = load i16*, i16** %12, align 8
  %250 = icmp ugt i16* %248, %249
  br i1 %250, label %251, label %264

251:                                              ; preds = %247
  %252 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %253 = load i16*, i16** %12, align 8
  %254 = load i16*, i16** %9, align 8
  %255 = load i16*, i16** %12, align 8
  %256 = ptrtoint i16* %254 to i64
  %257 = ptrtoint i16* %255 to i64
  %258 = sub i64 %256, %257
  %259 = sdiv exact i64 %258, 2
  %260 = trunc i64 %259 to i32
  %261 = load i32, i32* %11, align 4
  %262 = load i32, i32* %15, align 4
  %263 = call i32 @fbcon_putcs(%struct.vc_data* %252, i16* %253, i32 %260, i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %251, %247
  %265 = load i32, i32* %11, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %11, align 4
  %267 = load i16*, i16** %8, align 8
  %268 = load i64, i64* @softback_end, align 8
  %269 = inttoptr i64 %268 to i16*
  %270 = icmp eq i16* %267, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %264
  %272 = load i64, i64* @softback_buf, align 8
  %273 = inttoptr i64 %272 to i16*
  store i16* %273, i16** %8, align 8
  br label %274

274:                                              ; preds = %271, %264
  %275 = load i16*, i16** %8, align 8
  %276 = load i64, i64* @softback_in, align 8
  %277 = inttoptr i64 %276 to i16*
  %278 = icmp eq i16* %275, %277
  br i1 %278, label %279, label %284

279:                                              ; preds = %274
  %280 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %281 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = inttoptr i64 %282 to i16*
  store i16* %283, i16** %8, align 8
  br label %284

284:                                              ; preds = %279, %274
  %285 = load i16*, i16** %9, align 8
  %286 = load i64, i64* @softback_end, align 8
  %287 = inttoptr i64 %286 to i16*
  %288 = icmp eq i16* %285, %287
  br i1 %288, label %289, label %292

289:                                              ; preds = %284
  %290 = load i64, i64* @softback_buf, align 8
  %291 = inttoptr i64 %290 to i16*
  store i16* %291, i16** %9, align 8
  br label %292

292:                                              ; preds = %289, %284
  %293 = load i16*, i16** %9, align 8
  %294 = load i64, i64* @softback_in, align 8
  %295 = inttoptr i64 %294 to i16*
  %296 = icmp eq i16* %293, %295
  br i1 %296, label %297, label %302

297:                                              ; preds = %292
  %298 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %299 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = inttoptr i64 %300 to i16*
  store i16* %301, i16** %9, align 8
  br label %302

302:                                              ; preds = %297, %292
  br label %145

303:                                              ; preds = %130, %145
  ret void
}

declare dso_local i16* @advance_row(i16*, i32) #1

declare dso_local zeroext i16 @scr_readw(i16*) #1

declare dso_local i32 @fbcon_putcs(%struct.vc_data*, i16*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
