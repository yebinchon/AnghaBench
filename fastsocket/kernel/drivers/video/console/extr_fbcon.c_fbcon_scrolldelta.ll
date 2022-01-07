; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_scrolldelta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_scrolldelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__, %struct.fbcon_ops* }
%struct.TYPE_5__ = type { i32 }
%struct.fbcon_ops = type { i32 (%struct.fb_info.0*)*, %struct.TYPE_6__ }
%struct.fb_info.0 = type opaque
%struct.TYPE_6__ = type { i32, i64 }
%struct.display = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.vc_data* }
%struct.vc_data = type { i64, i64, i32, i64, i64, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@fg_console = common dso_local global i64 0, align 8
@fb_display = common dso_local global %struct.display* null, align 8
@softback_top = common dso_local global i64 0, align 8
@KD_TEXT = common dso_local global i64 0, align 8
@logo_shown = common dso_local global i64 0, align 8
@vc_cons = common dso_local global %struct.TYPE_8__* null, align 8
@logo_lines = common dso_local global i32 0, align 4
@softback_in = common dso_local global i64 0, align 8
@softback_buf = common dso_local global i64 0, align 8
@softback_end = common dso_local global i64 0, align 8
@softback_curr = common dso_local global i64 0, align 8
@FBCON_LOGO_CANSHOW = common dso_local global i64 0, align 8
@CM_ERASE = common dso_local global i32 0, align 4
@CM_SOFTBACK = common dso_local global i32 0, align 4
@CM_DRAW = common dso_local global i32 0, align 4
@scrollback_phys_max = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@scrollback_current = common dso_local global i32 0, align 4
@scrollback_max = common dso_local global i32 0, align 4
@FB_VMODE_YWRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32)* @fbcon_scrolldelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbcon_scrolldelta(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca %struct.fbcon_ops*, align 8
  %8 = alloca %struct.display*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vc_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %17 = load i64*, i64** @con2fb_map, align 8
  %18 = load i64, i64* @fg_console, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %16, i64 %20
  %22 = load %struct.fb_info*, %struct.fb_info** %21, align 8
  store %struct.fb_info* %22, %struct.fb_info** %6, align 8
  %23 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 1
  %25 = load %struct.fbcon_ops*, %struct.fbcon_ops** %24, align 8
  store %struct.fbcon_ops* %25, %struct.fbcon_ops** %7, align 8
  %26 = load %struct.display*, %struct.display** @fb_display, align 8
  %27 = load i64, i64* @fg_console, align 8
  %28 = getelementptr inbounds %struct.display, %struct.display* %26, i64 %27
  store %struct.display* %28, %struct.display** %8, align 8
  %29 = load i64, i64* @softback_top, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %160

31:                                               ; preds = %2
  %32 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %33 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @fg_console, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %271

38:                                               ; preds = %31
  %39 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @KD_TEXT, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44, %38
  store i32 0, i32* %3, align 4
  br label %271

48:                                               ; preds = %44
  %49 = load i64, i64* @logo_shown, align 8
  %50 = icmp uge i64 %49, 0
  br i1 %50, label %51, label %145

51:                                               ; preds = %48
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vc_cons, align 8
  %53 = load i64, i64* @logo_shown, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.vc_data*, %struct.vc_data** %55, align 8
  store %struct.vc_data* %56, %struct.vc_data** %12, align 8
  %57 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %58 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @logo_lines, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %51
  %63 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %64 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %67 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %72 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %71, i32 0, i32 2
  store i32 0, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %62, %51
  %74 = load i64, i64* @logo_shown, align 8
  %75 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %76 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %143

79:                                               ; preds = %73
  %80 = load i64, i64* @softback_in, align 8
  store i64 %80, i64* %13, align 8
  %81 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %82 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @logo_lines, align 4
  %85 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %86 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  %89 = add nsw i32 %83, %88
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %91

91:                                               ; preds = %128, %79
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @logo_lines, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %131

95:                                               ; preds = %91
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* @softback_top, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %131

100:                                              ; preds = %95
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* @softback_buf, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i64, i64* @softback_end, align 8
  store i64 %105, i64* %13, align 8
  br label %106

106:                                              ; preds = %104, %100
  %107 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %108 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %13, align 8
  %112 = sub i64 %111, %110
  store i64 %112, i64* %13, align 8
  %113 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %114 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %14, align 8
  %118 = sub i64 %117, %116
  store i64 %118, i64* %14, align 8
  %119 = load i64, i64* %14, align 8
  %120 = inttoptr i64 %119 to i32*
  %121 = load i64, i64* %13, align 8
  %122 = inttoptr i64 %121 to i32*
  %123 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %124 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = call i32 @scr_memcpyw(i32* %120, i32* %122, i64 %126)
  br label %128

128:                                              ; preds = %106
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %15, align 4
  br label %91

131:                                              ; preds = %99, %91
  %132 = load i64, i64* %13, align 8
  store i64 %132, i64* @softback_curr, align 8
  store i64 %132, i64* @softback_in, align 8
  %133 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %134 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %135 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @logo_lines, align 4
  %138 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %139 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 %137, %140
  %142 = call i32 @update_region(%struct.vc_data* %133, i32 %136, i32 %141)
  br label %143

143:                                              ; preds = %131, %73
  %144 = load i64, i64* @FBCON_LOGO_CANSHOW, align 8
  store i64 %144, i64* @logo_shown, align 8
  br label %145

145:                                              ; preds = %143, %48
  %146 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %147 = load i32, i32* @CM_ERASE, align 4
  %148 = load i32, i32* @CM_SOFTBACK, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @fbcon_cursor(%struct.vc_data* %146, i32 %149)
  %151 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %152 = load %struct.display*, %struct.display** %8, align 8
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @fbcon_redraw_softback(%struct.vc_data* %151, %struct.display* %152, i32 %153)
  %155 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %156 = load i32, i32* @CM_DRAW, align 4
  %157 = load i32, i32* @CM_SOFTBACK, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @fbcon_cursor(%struct.vc_data* %155, i32 %158)
  store i32 0, i32* %3, align 4
  br label %271

160:                                              ; preds = %2
  %161 = load i32, i32* @scrollback_phys_max, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* @ENOSYS, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %271

166:                                              ; preds = %160
  %167 = load i32, i32* @scrollback_current, align 4
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @scrollback_current, align 4
  %170 = sub nsw i32 %169, %168
  store i32 %170, i32* @scrollback_current, align 4
  %171 = load i32, i32* @scrollback_current, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  store i32 0, i32* @scrollback_current, align 4
  br label %181

174:                                              ; preds = %166
  %175 = load i32, i32* @scrollback_current, align 4
  %176 = load i32, i32* @scrollback_max, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i32, i32* @scrollback_max, align 4
  store i32 %179, i32* @scrollback_current, align 4
  br label %180

180:                                              ; preds = %178, %174
  br label %181

181:                                              ; preds = %180, %173
  %182 = load i32, i32* @scrollback_current, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i32 0, i32* %3, align 4
  br label %271

186:                                              ; preds = %181
  %187 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %188 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %189 = call i64 @fbcon_is_inactive(%struct.vc_data* %187, %struct.fb_info* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  store i32 0, i32* %3, align 4
  br label %271

192:                                              ; preds = %186
  %193 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %194 = load i32, i32* @CM_ERASE, align 4
  %195 = call i32 @fbcon_cursor(%struct.vc_data* %193, i32 %194)
  %196 = load %struct.display*, %struct.display** %8, align 8
  %197 = getelementptr inbounds %struct.display, %struct.display* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @scrollback_current, align 4
  %200 = sub nsw i32 %198, %199
  store i32 %200, i32* %9, align 4
  %201 = load %struct.display*, %struct.display** %8, align 8
  %202 = getelementptr inbounds %struct.display, %struct.display* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %10, align 4
  %204 = load %struct.display*, %struct.display** %8, align 8
  %205 = getelementptr inbounds %struct.display, %struct.display* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  switch i32 %206, label %229 [
    i32 128, label %207
    i32 130, label %214
    i32 129, label %214
  ]

207:                                              ; preds = %192
  %208 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %209 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %210 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = or i32 %212, %208
  store i32 %213, i32* %211, align 8
  br label %229

214:                                              ; preds = %192, %192
  %215 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %216 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = sub nsw i64 %219, %217
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %10, align 4
  %222 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %223 = xor i32 %222, -1
  %224 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %225 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = and i32 %227, %223
  store i32 %228, i32* %226, align 8
  br label %229

229:                                              ; preds = %192, %214, %207
  %230 = load i32, i32* %9, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %229
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %9, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %9, align 4
  br label %245

236:                                              ; preds = %229
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %10, align 4
  %239 = icmp sge i32 %237, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* %9, align 4
  %243 = sub nsw i32 %242, %241
  store i32 %243, i32* %9, align 4
  br label %244

244:                                              ; preds = %240, %236
  br label %245

245:                                              ; preds = %244, %232
  %246 = load %struct.fbcon_ops*, %struct.fbcon_ops** %7, align 8
  %247 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 1
  store i64 0, i64* %248, align 8
  %249 = load i32, i32* %9, align 4
  %250 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %251 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %250, i32 0, i32 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = mul nsw i32 %249, %253
  %255 = load %struct.fbcon_ops*, %struct.fbcon_ops** %7, align 8
  %256 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  store i32 %254, i32* %257, align 8
  %258 = load %struct.fbcon_ops*, %struct.fbcon_ops** %7, align 8
  %259 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %258, i32 0, i32 0
  %260 = load i32 (%struct.fb_info.0*)*, i32 (%struct.fb_info.0*)** %259, align 8
  %261 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %262 = bitcast %struct.fb_info* %261 to %struct.fb_info.0*
  %263 = call i32 %260(%struct.fb_info.0* %262)
  %264 = load i32, i32* @scrollback_current, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %270, label %266

266:                                              ; preds = %245
  %267 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %268 = load i32, i32* @CM_DRAW, align 4
  %269 = call i32 @fbcon_cursor(%struct.vc_data* %267, i32 %268)
  br label %270

270:                                              ; preds = %266, %245
  store i32 0, i32* %3, align 4
  br label %271

271:                                              ; preds = %270, %191, %185, %163, %145, %47, %37
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i32 @scr_memcpyw(i32*, i32*, i64) #1

declare dso_local i32 @update_region(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @fbcon_cursor(%struct.vc_data*, i32) #1

declare dso_local i32 @fbcon_redraw_softback(%struct.vc_data*, %struct.display*, i32) #1

declare dso_local i64 @fbcon_is_inactive(%struct.vc_data*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
