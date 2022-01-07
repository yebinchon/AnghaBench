; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/panel/extr_panel.c_lcd_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/panel/extr_panel.c_lcd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.file = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@lcd_escape_len = common dso_local global i64 0, align 8
@lcd_escape = common dso_local global i8* null, align 8
@lcd_addr_x = common dso_local global i64 0, align 8
@lcd_bwidth = common dso_local global i64 0, align 8
@lcd_addr_y = common dso_local global i32 0, align 4
@lcd_height = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"[2J\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"[H\00", align 1
@lcd_flags = common dso_local global i32 0, align 4
@LCD_FLAG_D = common dso_local global i32 0, align 4
@LCD_FLAG_C = common dso_local global i32 0, align 4
@LCD_FLAG_B = common dso_local global i32 0, align 4
@LCD_FLAG_L = common dso_local global i32 0, align 4
@scan_timer = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@light_tempo = common dso_local global i64 0, align 8
@FLASH_LIGHT_TEMPO = common dso_local global i64 0, align 8
@LCD_FLAG_F = common dso_local global i32 0, align 4
@LCD_FLAG_N = common dso_local global i32 0, align 4
@lcd_width = common dso_local global i64 0, align 8
@lcd_left_shift = common dso_local global i32 0, align 4
@LCD_ESCAPE_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64, i32*)* @lcd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcd_write(%struct.file* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [8 x i8], align 1
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %10, align 8
  br label %23

23:                                               ; preds = %585, %4
  %24 = load i64, i64* %8, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %8, align 8
  %26 = icmp ugt i64 %24, 0
  br i1 %26, label %27, label %589

27:                                               ; preds = %23
  %28 = call i32 (...) @in_interrupt()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 1
  %33 = and i64 %32, 31
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 (...) @schedule()
  br label %37

37:                                               ; preds = %35, %30, %27
  %38 = load i32*, i32** %9, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.file*, %struct.file** %6, align 8
  %42 = icmp eq %struct.file* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %11, align 1
  br label %55

46:                                               ; preds = %40, %37
  %47 = load i8, i8* %11, align 1
  %48 = load i8*, i8** %10, align 8
  %49 = call i64 @get_user(i8 signext %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EFAULT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %596

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %43
  %56 = load i8, i8* %11, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 10
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i64, i64* @lcd_escape_len, align 8
  %61 = icmp uge i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i8, i8* %11, align 1
  %64 = load i8*, i8** @lcd_escape, align 8
  %65 = load i64, i64* @lcd_escape_len, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* @lcd_escape_len, align 8
  %67 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 %63, i8* %67, align 1
  %68 = load i8*, i8** @lcd_escape, align 8
  %69 = load i64, i64* @lcd_escape_len, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8 0, i8* %70, align 1
  br label %119

71:                                               ; preds = %59, %55
  store i64 -1, i64* @lcd_escape_len, align 8
  %72 = load i8, i8* %11, align 1
  %73 = sext i8 %72 to i32
  switch i32 %73, label %115 [
    i32 128, label %74
    i32 8, label %78
    i32 12, label %93
    i32 10, label %95
    i32 13, label %111
    i32 9, label %113
  ]

74:                                               ; preds = %71
  store i64 0, i64* @lcd_escape_len, align 8
  %75 = load i8*, i8** @lcd_escape, align 8
  %76 = load i64, i64* @lcd_escape_len, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 0, i8* %77, align 1
  br label %118

78:                                               ; preds = %71
  %79 = load i64, i64* @lcd_addr_x, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i64, i64* @lcd_addr_x, align 8
  %83 = load i64, i64* @lcd_bwidth, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 @lcd_write_cmd(i32 16)
  br label %87

87:                                               ; preds = %85, %81
  %88 = load i64, i64* @lcd_addr_x, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* @lcd_addr_x, align 8
  br label %90

90:                                               ; preds = %87, %78
  %91 = call i32 @lcd_write_data(i8 zeroext 32)
  %92 = call i32 @lcd_write_cmd(i32 16)
  br label %118

93:                                               ; preds = %71
  %94 = call i32 (...) @lcd_clear_fast()
  br label %118

95:                                               ; preds = %71
  br label %96

96:                                               ; preds = %102, %95
  %97 = load i64, i64* @lcd_addr_x, align 8
  %98 = load i64, i64* @lcd_bwidth, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = call i32 @lcd_write_data(i8 zeroext 32)
  br label %102

102:                                              ; preds = %100
  %103 = load i64, i64* @lcd_addr_x, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* @lcd_addr_x, align 8
  br label %96

105:                                              ; preds = %96
  store i64 0, i64* @lcd_addr_x, align 8
  %106 = load i32, i32* @lcd_addr_y, align 4
  %107 = add nsw i32 %106, 1
  %108 = load i32, i32* @lcd_height, align 4
  %109 = srem i32 %107, %108
  store i32 %109, i32* @lcd_addr_y, align 4
  %110 = call i32 (...) @lcd_gotoxy()
  br label %118

111:                                              ; preds = %71
  store i64 0, i64* @lcd_addr_x, align 8
  %112 = call i32 (...) @lcd_gotoxy()
  br label %118

113:                                              ; preds = %71
  %114 = call i32 @lcd_print(i8 signext 32)
  br label %118

115:                                              ; preds = %71
  %116 = load i8, i8* %11, align 1
  %117 = call i32 @lcd_print(i8 signext %116)
  br label %118

118:                                              ; preds = %115, %113, %111, %105, %93, %90, %74
  br label %119

119:                                              ; preds = %118, %62
  %120 = load i64, i64* @lcd_escape_len, align 8
  %121 = icmp uge i64 %120, 2
  br i1 %121, label %122, label %576

122:                                              ; preds = %119
  store i32 0, i32* %12, align 4
  %123 = load i8*, i8** @lcd_escape, align 8
  %124 = call i32 @strcmp(i8* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = call i32 (...) @lcd_clear_fast()
  store i32 1, i32* %12, align 4
  br label %567

128:                                              ; preds = %122
  %129 = load i8*, i8** @lcd_escape, align 8
  %130 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  store i32 0, i32* @lcd_addr_y, align 4
  store i64 0, i64* @lcd_addr_x, align 8
  %133 = call i32 (...) @lcd_gotoxy()
  store i32 1, i32* %12, align 4
  br label %566

134:                                              ; preds = %128
  %135 = load i64, i64* @lcd_escape_len, align 8
  %136 = icmp uge i64 %135, 3
  br i1 %136, label %137, label %565

137:                                              ; preds = %134
  %138 = load i8*, i8** @lcd_escape, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 91
  br i1 %142, label %143, label %565

143:                                              ; preds = %137
  %144 = load i8*, i8** @lcd_escape, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 76
  br i1 %148, label %149, label %565

149:                                              ; preds = %143
  %150 = load i8*, i8** @lcd_escape, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 2
  store i8* %151, i8** %13, align 8
  %152 = load i32, i32* @lcd_flags, align 4
  store i32 %152, i32* %14, align 4
  %153 = load i8*, i8** %13, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  switch i32 %155, label %477 [
    i32 68, label %156
    i32 100, label %160
    i32 67, label %165
    i32 99, label %169
    i32 66, label %174
    i32 98, label %178
    i32 43, label %183
    i32 45, label %187
    i32 42, label %192
    i32 102, label %208
    i32 70, label %213
    i32 110, label %217
    i32 78, label %222
    i32 108, label %226
    i32 114, label %239
    i32 76, label %254
    i32 82, label %258
    i32 107, label %262
    i32 73, label %277
    i32 71, label %279
    i32 120, label %413
    i32 121, label %413
  ]

156:                                              ; preds = %149
  %157 = load i32, i32* @LCD_FLAG_D, align 4
  %158 = load i32, i32* @lcd_flags, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* @lcd_flags, align 4
  store i32 1, i32* %12, align 4
  br label %477

160:                                              ; preds = %149
  %161 = load i32, i32* @LCD_FLAG_D, align 4
  %162 = xor i32 %161, -1
  %163 = load i32, i32* @lcd_flags, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* @lcd_flags, align 4
  store i32 1, i32* %12, align 4
  br label %477

165:                                              ; preds = %149
  %166 = load i32, i32* @LCD_FLAG_C, align 4
  %167 = load i32, i32* @lcd_flags, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* @lcd_flags, align 4
  store i32 1, i32* %12, align 4
  br label %477

169:                                              ; preds = %149
  %170 = load i32, i32* @LCD_FLAG_C, align 4
  %171 = xor i32 %170, -1
  %172 = load i32, i32* @lcd_flags, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* @lcd_flags, align 4
  store i32 1, i32* %12, align 4
  br label %477

174:                                              ; preds = %149
  %175 = load i32, i32* @LCD_FLAG_B, align 4
  %176 = load i32, i32* @lcd_flags, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* @lcd_flags, align 4
  store i32 1, i32* %12, align 4
  br label %477

178:                                              ; preds = %149
  %179 = load i32, i32* @LCD_FLAG_B, align 4
  %180 = xor i32 %179, -1
  %181 = load i32, i32* @lcd_flags, align 4
  %182 = and i32 %181, %180
  store i32 %182, i32* @lcd_flags, align 4
  store i32 1, i32* %12, align 4
  br label %477

183:                                              ; preds = %149
  %184 = load i32, i32* @LCD_FLAG_L, align 4
  %185 = load i32, i32* @lcd_flags, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* @lcd_flags, align 4
  store i32 1, i32* %12, align 4
  br label %477

187:                                              ; preds = %149
  %188 = load i32, i32* @LCD_FLAG_L, align 4
  %189 = xor i32 %188, -1
  %190 = load i32, i32* @lcd_flags, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* @lcd_flags, align 4
  store i32 1, i32* %12, align 4
  br label %477

192:                                              ; preds = %149
  %193 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scan_timer, i32 0, i32 0), align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %207

195:                                              ; preds = %192
  %196 = load i64, i64* @light_tempo, align 8
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = load i32, i32* @lcd_flags, align 4
  %200 = load i32, i32* @LCD_FLAG_L, align 4
  %201 = and i32 %199, %200
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = call i32 @lcd_backlight(i32 1)
  br label %205

205:                                              ; preds = %203, %198, %195
  %206 = load i64, i64* @FLASH_LIGHT_TEMPO, align 8
  store i64 %206, i64* @light_tempo, align 8
  br label %207

207:                                              ; preds = %205, %192
  store i32 1, i32* %12, align 4
  br label %477

208:                                              ; preds = %149
  %209 = load i32, i32* @LCD_FLAG_F, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* @lcd_flags, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* @lcd_flags, align 4
  store i32 1, i32* %12, align 4
  br label %477

213:                                              ; preds = %149
  %214 = load i32, i32* @LCD_FLAG_F, align 4
  %215 = load i32, i32* @lcd_flags, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* @lcd_flags, align 4
  store i32 1, i32* %12, align 4
  br label %477

217:                                              ; preds = %149
  %218 = load i32, i32* @LCD_FLAG_N, align 4
  %219 = xor i32 %218, -1
  %220 = load i32, i32* @lcd_flags, align 4
  %221 = and i32 %220, %219
  store i32 %221, i32* @lcd_flags, align 4
  store i32 1, i32* %12, align 4
  br label %477

222:                                              ; preds = %149
  %223 = load i32, i32* @LCD_FLAG_N, align 4
  %224 = load i32, i32* @lcd_flags, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* @lcd_flags, align 4
  br label %477

226:                                              ; preds = %149
  %227 = load i64, i64* @lcd_addr_x, align 8
  %228 = icmp sgt i64 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %226
  %230 = load i64, i64* @lcd_addr_x, align 8
  %231 = load i64, i64* @lcd_bwidth, align 8
  %232 = icmp slt i64 %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = call i32 @lcd_write_cmd(i32 16)
  br label %235

235:                                              ; preds = %233, %229
  %236 = load i64, i64* @lcd_addr_x, align 8
  %237 = add nsw i64 %236, -1
  store i64 %237, i64* @lcd_addr_x, align 8
  br label %238

238:                                              ; preds = %235, %226
  store i32 1, i32* %12, align 4
  br label %477

239:                                              ; preds = %149
  %240 = load i64, i64* @lcd_addr_x, align 8
  %241 = load i64, i64* @lcd_width, align 8
  %242 = icmp slt i64 %240, %241
  br i1 %242, label %243, label %253

243:                                              ; preds = %239
  %244 = load i64, i64* @lcd_addr_x, align 8
  %245 = load i64, i64* @lcd_bwidth, align 8
  %246 = sub nsw i64 %245, 1
  %247 = icmp slt i64 %244, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %243
  %249 = call i32 @lcd_write_cmd(i32 20)
  br label %250

250:                                              ; preds = %248, %243
  %251 = load i64, i64* @lcd_addr_x, align 8
  %252 = add nsw i64 %251, 1
  store i64 %252, i64* @lcd_addr_x, align 8
  br label %253

253:                                              ; preds = %250, %239
  store i32 1, i32* %12, align 4
  br label %477

254:                                              ; preds = %149
  %255 = load i32, i32* @lcd_left_shift, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* @lcd_left_shift, align 4
  %257 = call i32 @lcd_write_cmd(i32 24)
  store i32 1, i32* %12, align 4
  br label %477

258:                                              ; preds = %149
  %259 = load i32, i32* @lcd_left_shift, align 4
  %260 = add nsw i32 %259, -1
  store i32 %260, i32* @lcd_left_shift, align 4
  %261 = call i32 @lcd_write_cmd(i32 28)
  store i32 1, i32* %12, align 4
  br label %477

262:                                              ; preds = %149
  %263 = load i64, i64* @lcd_addr_x, align 8
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %15, align 4
  br label %265

265:                                              ; preds = %272, %262
  %266 = load i32, i32* %15, align 4
  %267 = sext i32 %266 to i64
  %268 = load i64, i64* @lcd_bwidth, align 8
  %269 = icmp slt i64 %267, %268
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = call i32 @lcd_write_data(i8 zeroext 32)
  br label %272

272:                                              ; preds = %270
  %273 = load i32, i32* %15, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %15, align 4
  br label %265

275:                                              ; preds = %265
  %276 = call i32 (...) @lcd_gotoxy()
  store i32 1, i32* %12, align 4
  br label %477

277:                                              ; preds = %149
  %278 = call i32 (...) @lcd_init_display()
  store i32 0, i32* @lcd_left_shift, align 4
  store i32 1, i32* %12, align 4
  br label %477

279:                                              ; preds = %149
  %280 = load i8*, i8** %13, align 8
  %281 = call i32* @strchr(i8* %280, i8 signext 59)
  %282 = icmp eq i32* %281, null
  br i1 %282, label %283, label %284

283:                                              ; preds = %279
  br label %477

284:                                              ; preds = %279
  %285 = load i8*, i8** %13, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %13, align 8
  %287 = load i8*, i8** %13, align 8
  %288 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %288, i8** %13, align 8
  %289 = load i8, i8* %287, align 1
  %290 = sext i8 %289 to i32
  %291 = sub nsw i32 %290, 48
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %17, align 1
  %293 = load i8, i8* %17, align 1
  %294 = zext i8 %293 to i32
  %295 = icmp sgt i32 %294, 7
  br i1 %295, label %296, label %297

296:                                              ; preds = %284
  store i32 1, i32* %12, align 4
  br label %477

297:                                              ; preds = %284
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i8 0, i8* %20, align 1
  br label %298

298:                                              ; preds = %389, %375, %297
  %299 = load i8*, i8** %13, align 8
  %300 = load i8, i8* %299, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %298
  %304 = load i32, i32* %18, align 4
  %305 = icmp slt i32 %304, 8
  br label %306

306:                                              ; preds = %303, %298
  %307 = phi i1 [ false, %298 ], [ %305, %303 ]
  br i1 %307, label %308, label %392

308:                                              ; preds = %306
  %309 = load i32, i32* %19, align 4
  %310 = xor i32 %309, 4
  store i32 %310, i32* %19, align 4
  %311 = load i8*, i8** %13, align 8
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  %314 = icmp sge i32 %313, 48
  br i1 %314, label %315, label %331

315:                                              ; preds = %308
  %316 = load i8*, i8** %13, align 8
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp sle i32 %318, 57
  br i1 %319, label %320, label %331

320:                                              ; preds = %315
  %321 = load i8*, i8** %13, align 8
  %322 = load i8, i8* %321, align 1
  %323 = sext i8 %322 to i32
  %324 = sub nsw i32 %323, 48
  %325 = load i32, i32* %19, align 4
  %326 = shl i32 %324, %325
  %327 = load i8, i8* %20, align 1
  %328 = sext i8 %327 to i32
  %329 = or i32 %328, %326
  %330 = trunc i32 %329 to i8
  store i8 %330, i8* %20, align 1
  br label %380

331:                                              ; preds = %315, %308
  %332 = load i8*, i8** %13, align 8
  %333 = load i8, i8* %332, align 1
  %334 = sext i8 %333 to i32
  %335 = icmp sge i32 %334, 65
  br i1 %335, label %336, label %353

336:                                              ; preds = %331
  %337 = load i8*, i8** %13, align 8
  %338 = load i8, i8* %337, align 1
  %339 = sext i8 %338 to i32
  %340 = icmp sle i32 %339, 90
  br i1 %340, label %341, label %353

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8
  %343 = load i8, i8* %342, align 1
  %344 = sext i8 %343 to i32
  %345 = sub nsw i32 %344, 65
  %346 = add nsw i32 %345, 10
  %347 = load i32, i32* %19, align 4
  %348 = shl i32 %346, %347
  %349 = load i8, i8* %20, align 1
  %350 = sext i8 %349 to i32
  %351 = or i32 %350, %348
  %352 = trunc i32 %351 to i8
  store i8 %352, i8* %20, align 1
  br label %379

353:                                              ; preds = %336, %331
  %354 = load i8*, i8** %13, align 8
  %355 = load i8, i8* %354, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp sge i32 %356, 97
  br i1 %357, label %358, label %375

358:                                              ; preds = %353
  %359 = load i8*, i8** %13, align 8
  %360 = load i8, i8* %359, align 1
  %361 = sext i8 %360 to i32
  %362 = icmp sle i32 %361, 122
  br i1 %362, label %363, label %375

363:                                              ; preds = %358
  %364 = load i8*, i8** %13, align 8
  %365 = load i8, i8* %364, align 1
  %366 = sext i8 %365 to i32
  %367 = sub nsw i32 %366, 97
  %368 = add nsw i32 %367, 10
  %369 = load i32, i32* %19, align 4
  %370 = shl i32 %368, %369
  %371 = load i8, i8* %20, align 1
  %372 = sext i8 %371 to i32
  %373 = or i32 %372, %370
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* %20, align 1
  br label %378

375:                                              ; preds = %358, %353
  %376 = load i8*, i8** %13, align 8
  %377 = getelementptr inbounds i8, i8* %376, i32 1
  store i8* %377, i8** %13, align 8
  br label %298

378:                                              ; preds = %363
  br label %379

379:                                              ; preds = %378, %341
  br label %380

380:                                              ; preds = %379, %320
  %381 = load i32, i32* %19, align 4
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %389

383:                                              ; preds = %380
  %384 = load i8, i8* %20, align 1
  %385 = load i32, i32* %18, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %18, align 4
  %387 = sext i32 %385 to i64
  %388 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 %387
  store i8 %384, i8* %388, align 1
  store i8 0, i8* %20, align 1
  br label %389

389:                                              ; preds = %383, %380
  %390 = load i8*, i8** %13, align 8
  %391 = getelementptr inbounds i8, i8* %390, i32 1
  store i8* %391, i8** %13, align 8
  br label %298

392:                                              ; preds = %306
  %393 = load i8, i8* %17, align 1
  %394 = zext i8 %393 to i32
  %395 = mul nsw i32 %394, 8
  %396 = or i32 64, %395
  %397 = call i32 @lcd_write_cmd(i32 %396)
  store i32 0, i32* %21, align 4
  br label %398

398:                                              ; preds = %408, %392
  %399 = load i32, i32* %21, align 4
  %400 = load i32, i32* %18, align 4
  %401 = icmp slt i32 %399, %400
  br i1 %401, label %402, label %411

402:                                              ; preds = %398
  %403 = load i32, i32* %21, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 %404
  %406 = load i8, i8* %405, align 1
  %407 = call i32 @lcd_write_data(i8 zeroext %406)
  br label %408

408:                                              ; preds = %402
  %409 = load i32, i32* %21, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %21, align 4
  br label %398

411:                                              ; preds = %398
  %412 = call i32 (...) @lcd_gotoxy()
  store i32 1, i32* %12, align 4
  br label %477

413:                                              ; preds = %149, %149
  %414 = load i8*, i8** %13, align 8
  %415 = call i32* @strchr(i8* %414, i8 signext 59)
  %416 = icmp eq i32* %415, null
  br i1 %416, label %417, label %418

417:                                              ; preds = %413
  br label %477

418:                                              ; preds = %413
  br label %419

419:                                              ; preds = %474, %418
  %420 = load i8*, i8** %13, align 8
  %421 = load i8, i8* %420, align 1
  %422 = icmp ne i8 %421, 0
  br i1 %422, label %423, label %475

423:                                              ; preds = %419
  %424 = load i8*, i8** %13, align 8
  %425 = load i8, i8* %424, align 1
  %426 = sext i8 %425 to i32
  %427 = icmp eq i32 %426, 120
  br i1 %427, label %428, label %448

428:                                              ; preds = %423
  %429 = load i8*, i8** %13, align 8
  %430 = getelementptr inbounds i8, i8* %429, i32 1
  store i8* %430, i8** %13, align 8
  store i64 0, i64* @lcd_addr_x, align 8
  br label %431

431:                                              ; preds = %436, %428
  %432 = load i8*, i8** %13, align 8
  %433 = load i8, i8* %432, align 1
  %434 = call i32 @isdigit(i8 signext %433)
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %447

436:                                              ; preds = %431
  %437 = load i64, i64* @lcd_addr_x, align 8
  %438 = mul nsw i64 %437, 10
  %439 = load i8*, i8** %13, align 8
  %440 = load i8, i8* %439, align 1
  %441 = sext i8 %440 to i32
  %442 = sub nsw i32 %441, 48
  %443 = sext i32 %442 to i64
  %444 = add nsw i64 %438, %443
  store i64 %444, i64* @lcd_addr_x, align 8
  %445 = load i8*, i8** %13, align 8
  %446 = getelementptr inbounds i8, i8* %445, i32 1
  store i8* %446, i8** %13, align 8
  br label %431

447:                                              ; preds = %431
  br label %474

448:                                              ; preds = %423
  %449 = load i8*, i8** %13, align 8
  %450 = load i8, i8* %449, align 1
  %451 = sext i8 %450 to i32
  %452 = icmp eq i32 %451, 121
  br i1 %452, label %453, label %472

453:                                              ; preds = %448
  %454 = load i8*, i8** %13, align 8
  %455 = getelementptr inbounds i8, i8* %454, i32 1
  store i8* %455, i8** %13, align 8
  store i32 0, i32* @lcd_addr_y, align 4
  br label %456

456:                                              ; preds = %461, %453
  %457 = load i8*, i8** %13, align 8
  %458 = load i8, i8* %457, align 1
  %459 = call i32 @isdigit(i8 signext %458)
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %471

461:                                              ; preds = %456
  %462 = load i32, i32* @lcd_addr_y, align 4
  %463 = mul nsw i32 %462, 10
  %464 = load i8*, i8** %13, align 8
  %465 = load i8, i8* %464, align 1
  %466 = sext i8 %465 to i32
  %467 = sub nsw i32 %466, 48
  %468 = add nsw i32 %463, %467
  store i32 %468, i32* @lcd_addr_y, align 4
  %469 = load i8*, i8** %13, align 8
  %470 = getelementptr inbounds i8, i8* %469, i32 1
  store i8* %470, i8** %13, align 8
  br label %456

471:                                              ; preds = %456
  br label %473

472:                                              ; preds = %448
  br label %475

473:                                              ; preds = %471
  br label %474

474:                                              ; preds = %473, %447
  br label %419

475:                                              ; preds = %472, %419
  %476 = call i32 (...) @lcd_gotoxy()
  store i32 1, i32* %12, align 4
  br label %477

477:                                              ; preds = %149, %475, %417, %411, %296, %283, %277, %275, %258, %254, %253, %238, %222, %217, %213, %208, %207, %187, %183, %178, %174, %169, %165, %160, %156
  %478 = load i32, i32* %14, align 4
  %479 = load i32, i32* @lcd_flags, align 4
  %480 = icmp ne i32 %478, %479
  br i1 %480, label %481, label %564

481:                                              ; preds = %477
  %482 = load i32, i32* %14, align 4
  %483 = load i32, i32* @lcd_flags, align 4
  %484 = xor i32 %482, %483
  %485 = load i32, i32* @LCD_FLAG_B, align 4
  %486 = load i32, i32* @LCD_FLAG_C, align 4
  %487 = or i32 %485, %486
  %488 = load i32, i32* @LCD_FLAG_D, align 4
  %489 = or i32 %487, %488
  %490 = and i32 %484, %489
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %515

492:                                              ; preds = %481
  %493 = load i32, i32* @lcd_flags, align 4
  %494 = load i32, i32* @LCD_FLAG_D, align 4
  %495 = and i32 %493, %494
  %496 = icmp ne i32 %495, 0
  %497 = zext i1 %496 to i64
  %498 = select i1 %496, i32 4, i32 0
  %499 = or i32 8, %498
  %500 = load i32, i32* @lcd_flags, align 4
  %501 = load i32, i32* @LCD_FLAG_C, align 4
  %502 = and i32 %500, %501
  %503 = icmp ne i32 %502, 0
  %504 = zext i1 %503 to i64
  %505 = select i1 %503, i32 2, i32 0
  %506 = or i32 %499, %505
  %507 = load i32, i32* @lcd_flags, align 4
  %508 = load i32, i32* @LCD_FLAG_B, align 4
  %509 = and i32 %507, %508
  %510 = icmp ne i32 %509, 0
  %511 = zext i1 %510 to i64
  %512 = select i1 %510, i32 1, i32 0
  %513 = or i32 %506, %512
  %514 = call i32 @lcd_write_cmd(i32 %513)
  br label %563

515:                                              ; preds = %481
  %516 = load i32, i32* %14, align 4
  %517 = load i32, i32* @lcd_flags, align 4
  %518 = xor i32 %516, %517
  %519 = load i32, i32* @LCD_FLAG_F, align 4
  %520 = load i32, i32* @LCD_FLAG_N, align 4
  %521 = or i32 %519, %520
  %522 = and i32 %518, %521
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %540

524:                                              ; preds = %515
  %525 = load i32, i32* @lcd_flags, align 4
  %526 = load i32, i32* @LCD_FLAG_F, align 4
  %527 = and i32 %525, %526
  %528 = icmp ne i32 %527, 0
  %529 = zext i1 %528 to i64
  %530 = select i1 %528, i32 4, i32 0
  %531 = or i32 48, %530
  %532 = load i32, i32* @lcd_flags, align 4
  %533 = load i32, i32* @LCD_FLAG_N, align 4
  %534 = and i32 %532, %533
  %535 = icmp ne i32 %534, 0
  %536 = zext i1 %535 to i64
  %537 = select i1 %535, i32 8, i32 0
  %538 = or i32 %531, %537
  %539 = call i32 @lcd_write_cmd(i32 %538)
  br label %562

540:                                              ; preds = %515
  %541 = load i32, i32* %14, align 4
  %542 = load i32, i32* @lcd_flags, align 4
  %543 = xor i32 %541, %542
  %544 = load i32, i32* @LCD_FLAG_L, align 4
  %545 = and i32 %543, %544
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %561

547:                                              ; preds = %540
  %548 = load i32, i32* @lcd_flags, align 4
  %549 = load i32, i32* @LCD_FLAG_L, align 4
  %550 = and i32 %548, %549
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %554

552:                                              ; preds = %547
  %553 = call i32 @lcd_backlight(i32 1)
  br label %560

554:                                              ; preds = %547
  %555 = load i64, i64* @light_tempo, align 8
  %556 = icmp eq i64 %555, 0
  br i1 %556, label %557, label %559

557:                                              ; preds = %554
  %558 = call i32 @lcd_backlight(i32 0)
  br label %559

559:                                              ; preds = %557, %554
  br label %560

560:                                              ; preds = %559, %552
  br label %561

561:                                              ; preds = %560, %540
  br label %562

562:                                              ; preds = %561, %524
  br label %563

563:                                              ; preds = %562, %492
  br label %564

564:                                              ; preds = %563, %477
  br label %565

565:                                              ; preds = %564, %143, %137, %134
  br label %566

566:                                              ; preds = %565, %132
  br label %567

567:                                              ; preds = %566, %126
  %568 = load i32, i32* %12, align 4
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %574, label %570

570:                                              ; preds = %567
  %571 = load i64, i64* @lcd_escape_len, align 8
  %572 = load i64, i64* @LCD_ESCAPE_LEN, align 8
  %573 = icmp uge i64 %571, %572
  br i1 %573, label %574, label %575

574:                                              ; preds = %570, %567
  store i64 -1, i64* @lcd_escape_len, align 8
  br label %575

575:                                              ; preds = %574, %570
  br label %576

576:                                              ; preds = %575, %119
  br label %577

577:                                              ; preds = %576
  %578 = load i32*, i32** %9, align 8
  %579 = icmp ne i32* %578, null
  br i1 %579, label %580, label %584

580:                                              ; preds = %577
  %581 = load i32*, i32** %9, align 8
  %582 = load i32, i32* %581, align 4
  %583 = add nsw i32 %582, 1
  store i32 %583, i32* %581, align 4
  br label %585

584:                                              ; preds = %577
  br label %585

585:                                              ; preds = %584, %580
  %586 = phi i32 [ %582, %580 ], [ 0, %584 ]
  %587 = load i8*, i8** %10, align 8
  %588 = getelementptr inbounds i8, i8* %587, i32 1
  store i8* %588, i8** %10, align 8
  br label %23

589:                                              ; preds = %23
  %590 = load i8*, i8** %10, align 8
  %591 = load i8*, i8** %7, align 8
  %592 = ptrtoint i8* %590 to i64
  %593 = ptrtoint i8* %591 to i64
  %594 = sub i64 %592, %593
  %595 = trunc i64 %594 to i32
  store i32 %595, i32* %5, align 4
  br label %596

596:                                              ; preds = %589, %51
  %597 = load i32, i32* %5, align 4
  ret i32 %597
}

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @get_user(i8 signext, i8*) #1

declare dso_local i32 @lcd_write_cmd(i32) #1

declare dso_local i32 @lcd_write_data(i8 zeroext) #1

declare dso_local i32 @lcd_clear_fast(...) #1

declare dso_local i32 @lcd_gotoxy(...) #1

declare dso_local i32 @lcd_print(i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @lcd_backlight(i32) #1

declare dso_local i32 @lcd_init_display(...) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
