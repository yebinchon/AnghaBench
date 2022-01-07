; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_updatescrollmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_updatescrollmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i32, i8* }
%struct.fb_info = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.fbcon_ops* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.fbcon_ops = type { i32 }
%struct.vc_data = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@FBINFO_HWACCEL_YPAN = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_YWRAP = common dso_local global i32 0, align 4
@FBINFO_READS_FAST = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_COPYAREA = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_IMAGEBLIT = common dso_local global i32 0, align 4
@SCROLL_WRAP_MOVE = common dso_local global i8* null, align 8
@SCROLL_PAN_MOVE = common dso_local global i8* null, align 8
@SCROLL_REDRAW = common dso_local global i8* null, align 8
@SCROLL_PAN_REDRAW = common dso_local global i8* null, align 8
@SCROLL_MOVE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*, %struct.fb_info*, %struct.vc_data*)* @updatescrollmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updatescrollmode(%struct.display* %0, %struct.fb_info* %1, %struct.vc_data* %2) #0 {
  %4 = alloca %struct.display*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca %struct.fbcon_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.display* %0, %struct.display** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  store %struct.vc_data* %2, %struct.vc_data** %6, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 3
  %22 = load %struct.fbcon_ops*, %struct.fbcon_ops** %21, align 8
  store %struct.fbcon_ops* %22, %struct.fbcon_ops** %7, align 8
  %23 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %30 = load %struct.fbcon_ops*, %struct.fbcon_ops** %7, align 8
  %31 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @FBCON_SWAP(i32 %32, i32 %36, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.fbcon_ops*, %struct.fbcon_ops** %7, align 8
  %43 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @FBCON_SWAP(i32 %44, i32 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.fbcon_ops*, %struct.fbcon_ops** %7, align 8
  %52 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %59 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @FBCON_SWAP(i32 %53, i32 %57, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.fbcon_ops*, %struct.fbcon_ops** %7, align 8
  %64 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @FBCON_SWAP(i32 %65, i32 %69, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @FBINFO_HWACCEL_YPAN, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %3
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %82 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @divides(i32 %80, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp sgt i32 %88, %89
  br label %91

91:                                               ; preds = %87, %79, %3
  %92 = phi i1 [ false, %79 ], [ false, %3 ], [ %90, %87 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @FBINFO_HWACCEL_YWRAP, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %122

98:                                               ; preds = %91
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %101 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @divides(i32 %99, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %98
  %107 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %108 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %14, align 4
  %112 = call i64 @divides(i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %106
  %115 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %116 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i64 @divides(i32 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br label %122

122:                                              ; preds = %114, %106, %98, %91
  %123 = phi i1 [ false, %106 ], [ false, %98 ], [ false, %91 ], [ %121, %114 ]
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @FBINFO_READS_FAST, align 4
  %127 = and i32 %125, %126
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @FBINFO_HWACCEL_COPYAREA, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %122
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  br label %138

138:                                              ; preds = %132, %122
  %139 = phi i1 [ false, %122 ], [ %137, %132 ]
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @FBINFO_HWACCEL_IMAGEBLIT, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  br label %151

151:                                              ; preds = %145, %138
  %152 = phi i1 [ false, %138 ], [ %150, %145 ]
  %153 = zext i1 %152 to i32
  store i32 %153, i32* %19, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %8, align 4
  %156 = sdiv i32 %154, %155
  %157 = load %struct.display*, %struct.display** %4, align 8
  %158 = getelementptr inbounds %struct.display, %struct.display* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %162 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  %165 = mul nsw i32 %160, %164
  %166 = icmp sgt i32 %159, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %151
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %171 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 %169, %172
  %174 = sub nsw i32 %168, %173
  %175 = load i32, i32* %8, align 4
  %176 = sdiv i32 %174, %175
  %177 = load %struct.display*, %struct.display** %4, align 8
  %178 = getelementptr inbounds %struct.display, %struct.display* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %167, %151
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %8, align 4
  %184 = srem i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %181
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %8, align 4
  %189 = srem i32 %187, %188
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %8, align 4
  %192 = srem i32 %190, %191
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %186
  %195 = load %struct.display*, %struct.display** %4, align 8
  %196 = getelementptr inbounds %struct.display, %struct.display* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %194, %186, %181
  %200 = load i32, i32* %16, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* %15, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %234

205:                                              ; preds = %202, %199
  %206 = load i32, i32* %17, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %205
  %209 = load i32, i32* %18, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %222

211:                                              ; preds = %208, %205
  %212 = load i32, i32* %16, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %211
  %215 = load i8*, i8** @SCROLL_WRAP_MOVE, align 8
  br label %218

216:                                              ; preds = %211
  %217 = load i8*, i8** @SCROLL_PAN_MOVE, align 8
  br label %218

218:                                              ; preds = %216, %214
  %219 = phi i8* [ %215, %214 ], [ %217, %216 ]
  %220 = load %struct.display*, %struct.display** %4, align 8
  %221 = getelementptr inbounds %struct.display, %struct.display* %220, i32 0, i32 1
  store i8* %219, i8** %221, align 8
  br label %233

222:                                              ; preds = %208
  %223 = load i32, i32* %16, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = load i8*, i8** @SCROLL_REDRAW, align 8
  br label %229

227:                                              ; preds = %222
  %228 = load i8*, i8** @SCROLL_PAN_REDRAW, align 8
  br label %229

229:                                              ; preds = %227, %225
  %230 = phi i8* [ %226, %225 ], [ %228, %227 ]
  %231 = load %struct.display*, %struct.display** %4, align 8
  %232 = getelementptr inbounds %struct.display, %struct.display* %231, i32 0, i32 1
  store i8* %230, i8** %232, align 8
  br label %233

233:                                              ; preds = %229, %218
  br label %252

234:                                              ; preds = %202
  %235 = load i32, i32* %17, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %243, label %237

237:                                              ; preds = %234
  %238 = load i32, i32* %18, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %237
  %241 = load i32, i32* %19, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %247, label %243

243:                                              ; preds = %240, %234
  %244 = load i8*, i8** @SCROLL_MOVE, align 8
  %245 = load %struct.display*, %struct.display** %4, align 8
  %246 = getelementptr inbounds %struct.display, %struct.display* %245, i32 0, i32 1
  store i8* %244, i8** %246, align 8
  br label %251

247:                                              ; preds = %240, %237
  %248 = load i8*, i8** @SCROLL_REDRAW, align 8
  %249 = load %struct.display*, %struct.display** %4, align 8
  %250 = getelementptr inbounds %struct.display, %struct.display* %249, i32 0, i32 1
  store i8* %248, i8** %250, align 8
  br label %251

251:                                              ; preds = %247, %243
  br label %252

252:                                              ; preds = %251, %233
  ret void
}

declare dso_local i32 @FBCON_SWAP(i32, i32, i32) #1

declare dso_local i64 @divides(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
