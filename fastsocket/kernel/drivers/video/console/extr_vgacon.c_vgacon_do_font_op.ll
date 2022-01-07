; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_do_font_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_do_font_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.vc_data* }
%struct.vc_data = type { i32, i32* }
%struct.vgastate = type { i32 }

@vga_video_port_reg = common dso_local global i32 0, align 4
@vga_video_type = common dso_local global i64 0, align 8
@VIDEO_TYPE_EGAM = common dso_local global i64 0, align 8
@colourmap = common dso_local global i32 0, align 4
@blackwmap = common dso_local global i32 0, align 4
@vga_font_is_default = common dso_local global i32 0, align 4
@cmapsz = common dso_local global i32 0, align 4
@vga_lock = common dso_local global i32 0, align 4
@VGA_SEQ_RESET = common dso_local global i32 0, align 4
@VGA_SEQ_PLANE_WRITE = common dso_local global i32 0, align 4
@VGA_SEQ_MEMORY_MODE = common dso_local global i32 0, align 4
@VGA_GFX_PLANE_READ = common dso_local global i32 0, align 4
@VGA_GFX_MODE = common dso_local global i32 0, align 4
@VGA_GFX_MISC = common dso_local global i32 0, align 4
@VGA_SEQ_CHARACTER_MAP = common dso_local global i32 0, align 4
@vga_512_chars = common dso_local global i32 0, align 4
@MAX_NR_CONSOLES = common dso_local global i32 0, align 4
@vc_cons = common dso_local global %struct.TYPE_2__* null, align 8
@vga_con = common dso_local global i32 0, align 4
@VGA_ATC_PLANE_ENABLE = common dso_local global i32 0, align 4
@VGA_AR_ENABLE_DISPLAY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VIDEO_TYPE_VGAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgastate*, i8*, i32, i32)* @vgacon_do_font_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgacon_do_font_op(%struct.vgastate* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vgastate*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.vc_data*, align 8
  store %struct.vgastate* %0, %struct.vgastate** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @vga_video_port_reg, align 4
  %16 = add nsw i32 %15, 6
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %9, align 2
  store i32 0, i32* %10, align 4
  %18 = load i64, i64* @vga_video_type, align 8
  %19 = load i64, i64* @VIDEO_TYPE_EGAM, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* @colourmap, align 4
  %23 = call i64 @VGA_MAP_MEM(i32 %22, i32 0)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %13, align 8
  store i32 14, i32* %11, align 4
  br label %29

25:                                               ; preds = %4
  %26 = load i32, i32* @blackwmap, align 4
  %27 = call i64 @VGA_MAP_MEM(i32 %26, i32 0)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %13, align 8
  store i32 10, i32* %11, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* @vga_font_is_default, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 14, i32 10
  br label %49

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %43
  %50 = phi i32 [ %47, %43 ], [ 0, %48 ]
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %49, %29
  %52 = load i32, i32* @vga_font_is_default, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @cmapsz, align 4
  %56 = mul nsw i32 4, %55
  %57 = load i8*, i8** %13, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %13, align 8
  br label %60

60:                                               ; preds = %54, %51
  %61 = call i32 (...) @unlock_kernel()
  %62 = call i32 @spin_lock_irq(i32* @vga_lock)
  %63 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %64 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @VGA_SEQ_RESET, align 4
  %67 = call i32 @vga_wseq(i32 %65, i32 %66, i32 1)
  %68 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %69 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @VGA_SEQ_PLANE_WRITE, align 4
  %72 = call i32 @vga_wseq(i32 %70, i32 %71, i32 4)
  %73 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %74 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @VGA_SEQ_MEMORY_MODE, align 4
  %77 = call i32 @vga_wseq(i32 %75, i32 %76, i32 7)
  %78 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %79 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @VGA_SEQ_RESET, align 4
  %82 = call i32 @vga_wseq(i32 %80, i32 %81, i32 3)
  %83 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %84 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @VGA_GFX_PLANE_READ, align 4
  %87 = call i32 @vga_wgfx(i32 %85, i32 %86, i32 2)
  %88 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %89 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @VGA_GFX_MODE, align 4
  %92 = call i32 @vga_wgfx(i32 %90, i32 %91, i32 0)
  %93 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %94 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @VGA_GFX_MISC, align 4
  %97 = call i32 @vga_wgfx(i32 %95, i32 %96, i32 0)
  %98 = call i32 @spin_unlock_irq(i32* @vga_lock)
  %99 = load i8*, i8** %6, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %203

101:                                              ; preds = %60
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %121, %104
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @cmapsz, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %105
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = load i8*, i8** %13, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = call i32 @vga_writeb(i8 signext %114, i8* %118)
  %120 = call i32 (...) @cond_resched()
  br label %121

121:                                              ; preds = %109
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %105

124:                                              ; preds = %105
  br label %145

125:                                              ; preds = %101
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %141, %125
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @cmapsz, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load i8*, i8** %13, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = call signext i8 @vga_readb(i8* %134)
  %136 = load i8*, i8** %6, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  store i8 %135, i8* %139, align 1
  %140 = call i32 (...) @cond_resched()
  br label %141

141:                                              ; preds = %130
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %126

144:                                              ; preds = %126
  br label %145

145:                                              ; preds = %144, %124
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %202

148:                                              ; preds = %145
  %149 = load i32, i32* @cmapsz, align 4
  %150 = mul nsw i32 2, %149
  %151 = load i8*, i8** %13, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  store i8* %153, i8** %13, align 8
  %154 = load i32, i32* @cmapsz, align 4
  %155 = load i8*, i8** %6, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8* %157, i8** %6, align 8
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %181

160:                                              ; preds = %148
  store i32 0, i32* %12, align 4
  br label %161

161:                                              ; preds = %177, %160
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @cmapsz, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %180

165:                                              ; preds = %161
  %166 = load i8*, i8** %6, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = load i8*, i8** %13, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = call i32 @vga_writeb(i8 signext %170, i8* %174)
  %176 = call i32 (...) @cond_resched()
  br label %177

177:                                              ; preds = %165
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %12, align 4
  br label %161

180:                                              ; preds = %161
  br label %201

181:                                              ; preds = %148
  store i32 0, i32* %12, align 4
  br label %182

182:                                              ; preds = %197, %181
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* @cmapsz, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %200

186:                                              ; preds = %182
  %187 = load i8*, i8** %13, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = call signext i8 @vga_readb(i8* %190)
  %192 = load i8*, i8** %6, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  store i8 %191, i8* %195, align 1
  %196 = call i32 (...) @cond_resched()
  br label %197

197:                                              ; preds = %186
  %198 = load i32, i32* %12, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %12, align 4
  br label %182

200:                                              ; preds = %182
  br label %201

201:                                              ; preds = %200, %180
  br label %202

202:                                              ; preds = %201, %145
  br label %203

203:                                              ; preds = %202, %60
  %204 = call i32 @spin_lock_irq(i32* @vga_lock)
  %205 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %206 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @VGA_SEQ_RESET, align 4
  %209 = call i32 @vga_wseq(i32 %207, i32 %208, i32 1)
  %210 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %211 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @VGA_SEQ_PLANE_WRITE, align 4
  %214 = call i32 @vga_wseq(i32 %212, i32 %213, i32 3)
  %215 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %216 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @VGA_SEQ_MEMORY_MODE, align 4
  %219 = call i32 @vga_wseq(i32 %217, i32 %218, i32 3)
  %220 = load i32, i32* %7, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %203
  %223 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %224 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @VGA_SEQ_CHARACTER_MAP, align 4
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @vga_wseq(i32 %225, i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %222, %203
  %230 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %231 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @VGA_SEQ_RESET, align 4
  %234 = call i32 @vga_wseq(i32 %232, i32 %233, i32 3)
  %235 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %236 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @VGA_GFX_PLANE_READ, align 4
  %239 = call i32 @vga_wgfx(i32 %237, i32 %238, i32 0)
  %240 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %241 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @VGA_GFX_MODE, align 4
  %244 = call i32 @vga_wgfx(i32 %242, i32 %243, i32 16)
  %245 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %246 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @VGA_GFX_MISC, align 4
  %249 = load i32, i32* %11, align 4
  %250 = call i32 @vga_wgfx(i32 %247, i32 %248, i32 %249)
  %251 = load i32, i32* %7, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %307

253:                                              ; preds = %229
  %254 = load i32, i32* %8, align 4
  %255 = load i32, i32* @vga_512_chars, align 4
  %256 = icmp ne i32 %254, %255
  br i1 %256, label %257, label %307

257:                                              ; preds = %253
  store i32 0, i32* %12, align 4
  br label %258

258:                                              ; preds = %284, %257
  %259 = load i32, i32* %12, align 4
  %260 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %287

262:                                              ; preds = %258
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vc_cons, align 8
  %264 = load i32, i32* %12, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 0
  %268 = load %struct.vc_data*, %struct.vc_data** %267, align 8
  store %struct.vc_data* %268, %struct.vc_data** %14, align 8
  %269 = load %struct.vc_data*, %struct.vc_data** %14, align 8
  %270 = icmp ne %struct.vc_data* %269, null
  br i1 %270, label %271, label %283

271:                                              ; preds = %262
  %272 = load %struct.vc_data*, %struct.vc_data** %14, align 8
  %273 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = icmp eq i32* %274, @vga_con
  br i1 %275, label %276, label %283

276:                                              ; preds = %271
  %277 = load i32, i32* %8, align 4
  %278 = icmp ne i32 %277, 0
  %279 = zext i1 %278 to i64
  %280 = select i1 %278, i32 2048, i32 0
  %281 = load %struct.vc_data*, %struct.vc_data** %14, align 8
  %282 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 8
  br label %283

283:                                              ; preds = %276, %271, %262
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %12, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %12, align 4
  br label %258

287:                                              ; preds = %258
  %288 = load i32, i32* %8, align 4
  store i32 %288, i32* @vga_512_chars, align 4
  %289 = load i16, i16* %9, align 2
  %290 = call i32 @inb_p(i16 zeroext %289)
  %291 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %292 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @VGA_ATC_PLANE_ENABLE, align 4
  %295 = load i32, i32* %8, align 4
  %296 = icmp ne i32 %295, 0
  %297 = zext i1 %296 to i64
  %298 = select i1 %296, i32 7, i32 15
  %299 = call i32 @vga_wattr(i32 %293, i32 %294, i32 %298)
  %300 = load i16, i16* %9, align 2
  %301 = call i32 @inb_p(i16 zeroext %300)
  %302 = load %struct.vgastate*, %struct.vgastate** %5, align 8
  %303 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @VGA_AR_ENABLE_DISPLAY, align 4
  %306 = call i32 @vga_wattr(i32 %304, i32 %305, i32 0)
  br label %307

307:                                              ; preds = %287, %253, %229
  %308 = call i32 @spin_unlock_irq(i32* @vga_lock)
  %309 = call i32 (...) @lock_kernel()
  ret i32 0
}

declare dso_local i64 @VGA_MAP_MEM(i32, i32) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @vga_wseq(i32, i32, i32) #1

declare dso_local i32 @vga_wgfx(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @vga_writeb(i8 signext, i8*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local signext i8 @vga_readb(i8*) #1

declare dso_local i32 @inb_p(i16 zeroext) #1

declare dso_local i32 @vga_wattr(i32, i32, i32) #1

declare dso_local i32 @lock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
