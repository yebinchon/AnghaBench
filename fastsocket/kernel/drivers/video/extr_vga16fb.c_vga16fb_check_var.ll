; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vga16fb.c_vga16fb_check_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vga16fb.c_vga16fb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.fb_info = type { %struct.vga16fb_par* }
%struct.vga16fb_par = type { i32, i32*, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MODE_SKIP4 = common dso_local global i32 0, align 4
@MODE_CFB = common dso_local global i32 0, align 4
@MODE_8BPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"xtotal too big\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"hslen too big\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"hblank too big\00", align 1
@VGA_CRTC_H_TOTAL = common dso_local global i64 0, align 8
@VGA_CRTC_H_BLANK_START = common dso_local global i64 0, align 8
@VGA_CRTC_H_DISP = common dso_local global i64 0, align 8
@VGA_CRTC_H_SYNC_START = common dso_local global i64 0, align 8
@VGA_CRTC_H_SYNC_END = common dso_local global i64 0, align 8
@VGA_CRTC_H_BLANK_END = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"ytotal too big\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"vslen too big\00", align 1
@VGA_CRTC_V_TOTAL = common dso_local global i64 0, align 8
@VGA_CRTC_PRESET_ROW = common dso_local global i64 0, align 8
@VGA_CRTC_MAX_SCAN = common dso_local global i64 0, align 8
@VGA_CRTC_CURSOR_START = common dso_local global i64 0, align 8
@VGA_CRTC_CURSOR_END = common dso_local global i64 0, align 8
@VGA_CRTC_START_HI = common dso_local global i64 0, align 8
@VGA_CRTC_START_LO = common dso_local global i64 0, align 8
@VGA_CRTC_CURSOR_HI = common dso_local global i64 0, align 8
@VGA_CRTC_CURSOR_LO = common dso_local global i64 0, align 8
@VGA_CRTC_V_DISP_END = common dso_local global i64 0, align 8
@VGA_CRTC_V_BLANK_START = common dso_local global i64 0, align 8
@VGA_CRTC_V_SYNC_START = common dso_local global i64 0, align 8
@VGA_CRTC_V_SYNC_END = common dso_local global i64 0, align 8
@VGA_CRTC_V_BLANK_END = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"vxres too long\00", align 1
@VGA_CRTC_OFFSET = common dso_local global i64 0, align 8
@VGA_CRTC_UNDERLINE = common dso_local global i64 0, align 8
@MODE_TEXT = common dso_local global i32 0, align 4
@VGA_CRTC_MODE = common dso_local global i64 0, align 8
@VGA_CRTC_LINE_COMPARE = common dso_local global i64 0, align 8
@VGA_CRTC_OVERFLOW = common dso_local global i64 0, align 8
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @vga16fb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga16fb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.vga16fb_par*, align 8
  %7 = alloca i32, align 4
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %27 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 0
  %29 = load %struct.vga16fb_par*, %struct.vga16fb_par** %28, align 8
  store %struct.vga16fb_par* %29, %struct.vga16fb_par** %6, align 8
  %30 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %31 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %30, i32 0, i32 0
  store i32 255, i32* %31, align 8
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %57

36:                                               ; preds = %2
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 24
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %43 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %700

49:                                               ; preds = %41
  store i32 3, i32* %24, align 4
  %50 = load i32, i32* @MODE_SKIP4, align 4
  %51 = load i32, i32* @MODE_CFB, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %25, align 4
  store i32 16384, i32* %26, align 4
  %53 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %54 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %53, i32 0, i32 0
  store i32 15, i32* %54, align 8
  br label %56

55:                                               ; preds = %36
  store i32 3, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 65536, i32* %26, align 4
  br label %56

56:                                               ; preds = %55, %49
  br label %90

57:                                               ; preds = %2
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 8
  br i1 %61, label %62, label %86

62:                                               ; preds = %57
  %63 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %64 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %700

70:                                               ; preds = %62
  store i32 2, i32* %24, align 4
  %71 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %71, i32 0, i32 24
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @MODE_8BPP, align 4
  %77 = load i32, i32* @MODE_CFB, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %25, align 4
  store i32 65536, i32* %26, align 4
  br label %85

79:                                               ; preds = %70
  %80 = load i32, i32* @MODE_SKIP4, align 4
  %81 = load i32, i32* @MODE_8BPP, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @MODE_CFB, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %25, align 4
  store i32 16384, i32* %26, align 4
  br label %85

85:                                               ; preds = %79, %75
  br label %89

86:                                               ; preds = %57
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %700

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %56
  %91 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %92 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 7
  %95 = and i32 %94, -8
  store i32 %95, i32* %7, align 4
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 15
  %100 = and i32 %99, -16
  store i32 %100, i32* %17, align 4
  %101 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 7
  %105 = and i32 %104, -8
  store i32 %105, i32* %18, align 4
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 7
  %110 = and i32 %109, -8
  store i32 %110, i32* %10, align 4
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 7
  %115 = and i32 %114, -8
  store i32 %115, i32* %8, align 4
  %116 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %117 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 7
  %120 = and i32 %119, -8
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %90
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %17, align 4
  br label %126

126:                                              ; preds = %124, %90
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %127, %128
  %130 = load i32, i32* %17, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %7, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %18, align 4
  br label %136

136:                                              ; preds = %132, %126
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %139 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %142 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %145 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %144, i32 0, i32 6
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %148 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %17, align 4
  %150 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %151 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %18, align 4
  %153 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %154 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %24, align 4
  %156 = load i32, i32* %7, align 4
  %157 = ashr i32 %156, %155
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %24, align 4
  %159 = load i32, i32* %8, align 4
  %160 = ashr i32 %159, %158
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %24, align 4
  %162 = load i32, i32* %9, align 4
  %163 = ashr i32 %162, %161
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %24, align 4
  %165 = load i32, i32* %10, align 4
  %166 = ashr i32 %165, %164
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %24, align 4
  %168 = load i32, i32* %17, align 4
  %169 = ashr i32 %168, %167
  store i32 %169, i32* %17, align 4
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %170, %171
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %172, %173
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %174, %175
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp sge i32 %177, 256
  br i1 %178, label %179, label %181

179:                                              ; preds = %136
  %180 = call i32 @FAIL(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %136
  %182 = load i32, i32* %9, align 4
  %183 = icmp sgt i32 %182, 32
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = call i32 @FAIL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %181
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %187, %188
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %189, %190
  %192 = icmp sgt i32 %191, 64
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  %194 = call i32 @FAIL(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %186
  %196 = load i32, i32* %11, align 4
  %197 = sub nsw i32 %196, 5
  %198 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %199 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* @VGA_CRTC_H_TOTAL, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32 %197, i32* %202, align 4
  %203 = load i32, i32* %7, align 4
  %204 = sub nsw i32 %203, 1
  %205 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %206 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* @VGA_CRTC_H_BLANK_START, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  store i32 %204, i32* %209, align 4
  %210 = load i32, i32* %7, align 4
  %211 = sub nsw i32 %210, 1
  %212 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %213 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* @VGA_CRTC_H_DISP, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32 %211, i32* %216, align 4
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %217, %218
  store i32 %219, i32* %21, align 4
  %220 = load i32, i32* %21, align 4
  %221 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %222 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i64, i64* @VGA_CRTC_H_SYNC_START, align 8
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  store i32 %220, i32* %225, align 4
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* %21, align 4
  %228 = add nsw i32 %227, %226
  store i32 %228, i32* %21, align 4
  %229 = load i32, i32* %21, align 4
  %230 = and i32 %229, 31
  %231 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %232 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = load i64, i64* @VGA_CRTC_H_SYNC_END, align 8
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  store i32 %230, i32* %235, align 4
  %236 = load i32, i32* %10, align 4
  %237 = sub nsw i32 %236, 2
  %238 = load i32, i32* %21, align 4
  %239 = add nsw i32 %238, %237
  store i32 %239, i32* %21, align 4
  %240 = load i32, i32* %21, align 4
  %241 = and i32 %240, 31
  %242 = or i32 %241, 128
  %243 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %244 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = load i64, i64* @VGA_CRTC_H_BLANK_END, align 8
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  store i32 %242, i32* %247, align 4
  %248 = load i32, i32* %21, align 4
  %249 = and i32 %248, 32
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %195
  %252 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %253 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = load i64, i64* @VGA_CRTC_H_SYNC_END, align 8
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %257, 128
  store i32 %258, i32* %256, align 4
  br label %259

259:                                              ; preds = %251, %195
  %260 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %261 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %260, i32 0, i32 7
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %12, align 4
  %263 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %264 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %263, i32 0, i32 8
  %265 = load i32, i32* %264, align 8
  store i32 %265, i32* %13, align 4
  %266 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %267 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %266, i32 0, i32 9
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %14, align 4
  %269 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %270 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %269, i32 0, i32 10
  %271 = load i32, i32* %270, align 8
  store i32 %271, i32* %15, align 4
  %272 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %273 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %272, i32 0, i32 11
  %274 = load i32, i32* %273, align 4
  store i32 %274, i32* %19, align 4
  %275 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %276 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %275, i32 0, i32 12
  %277 = load i32, i32* %276, align 8
  store i32 %277, i32* %20, align 4
  %278 = load i32, i32* %12, align 4
  %279 = load i32, i32* %19, align 4
  %280 = icmp sgt i32 %278, %279
  br i1 %280, label %281, label %283

281:                                              ; preds = %259
  %282 = load i32, i32* %12, align 4
  store i32 %282, i32* %19, align 4
  br label %283

283:                                              ; preds = %281, %259
  %284 = load i32, i32* %17, align 4
  %285 = load i32, i32* %19, align 4
  %286 = mul nsw i32 %284, %285
  %287 = load i32, i32* %26, align 4
  %288 = icmp sgt i32 %286, %287
  br i1 %288, label %289, label %300

289:                                              ; preds = %283
  %290 = load i32, i32* %26, align 4
  %291 = load i32, i32* %17, align 4
  %292 = sdiv i32 %290, %291
  store i32 %292, i32* %19, align 4
  %293 = load i32, i32* %19, align 4
  %294 = load i32, i32* %12, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %299

296:                                              ; preds = %289
  %297 = load i32, i32* @ENOMEM, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %3, align 4
  br label %700

299:                                              ; preds = %289
  br label %300

300:                                              ; preds = %299, %283
  %301 = load i32, i32* %20, align 4
  %302 = load i32, i32* %12, align 4
  %303 = add nsw i32 %301, %302
  %304 = load i32, i32* %19, align 4
  %305 = icmp sgt i32 %303, %304
  br i1 %305, label %306, label %310

306:                                              ; preds = %300
  %307 = load i32, i32* %19, align 4
  %308 = load i32, i32* %12, align 4
  %309 = sub nsw i32 %307, %308
  store i32 %309, i32* %20, align 4
  br label %310

310:                                              ; preds = %306, %300
  %311 = load i32, i32* %12, align 4
  %312 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %313 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %312, i32 0, i32 7
  store i32 %311, i32* %313, align 4
  %314 = load i32, i32* %13, align 4
  %315 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %316 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %315, i32 0, i32 8
  store i32 %314, i32* %316, align 8
  %317 = load i32, i32* %14, align 4
  %318 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %319 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %318, i32 0, i32 9
  store i32 %317, i32* %319, align 4
  %320 = load i32, i32* %15, align 4
  %321 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %322 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %321, i32 0, i32 10
  store i32 %320, i32* %322, align 8
  %323 = load i32, i32* %19, align 4
  %324 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %325 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %324, i32 0, i32 11
  store i32 %323, i32* %325, align 4
  %326 = load i32, i32* %20, align 4
  %327 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %328 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %327, i32 0, i32 12
  store i32 %326, i32* %328, align 8
  %329 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %330 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %329, i32 0, i32 13
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %344

335:                                              ; preds = %310
  %336 = load i32, i32* %12, align 4
  %337 = shl i32 %336, 1
  store i32 %337, i32* %12, align 4
  %338 = load i32, i32* %13, align 4
  %339 = shl i32 %338, 1
  store i32 %339, i32* %13, align 4
  %340 = load i32, i32* %14, align 4
  %341 = shl i32 %340, 1
  store i32 %341, i32* %14, align 4
  %342 = load i32, i32* %15, align 4
  %343 = shl i32 %342, 1
  store i32 %343, i32* %15, align 4
  br label %344

344:                                              ; preds = %335, %310
  %345 = load i32, i32* %12, align 4
  %346 = load i32, i32* %13, align 4
  %347 = add nsw i32 %345, %346
  %348 = load i32, i32* %14, align 4
  %349 = add nsw i32 %347, %348
  %350 = load i32, i32* %15, align 4
  %351 = add nsw i32 %349, %350
  store i32 %351, i32* %16, align 4
  %352 = load i32, i32* %16, align 4
  %353 = icmp sgt i32 %352, 1024
  br i1 %353, label %354, label %365

354:                                              ; preds = %344
  %355 = load i32, i32* %16, align 4
  %356 = ashr i32 %355, 1
  store i32 %356, i32* %16, align 4
  %357 = load i32, i32* %12, align 4
  %358 = ashr i32 %357, 1
  store i32 %358, i32* %12, align 4
  %359 = load i32, i32* %13, align 4
  %360 = ashr i32 %359, 1
  store i32 %360, i32* %13, align 4
  %361 = load i32, i32* %14, align 4
  %362 = ashr i32 %361, 1
  store i32 %362, i32* %14, align 4
  %363 = load i32, i32* %15, align 4
  %364 = ashr i32 %363, 1
  store i32 %364, i32* %15, align 4
  store i32 4, i32* %23, align 4
  br label %366

365:                                              ; preds = %344
  store i32 0, i32* %23, align 4
  br label %366

366:                                              ; preds = %365, %354
  %367 = load i32, i32* %16, align 4
  %368 = icmp sgt i32 %367, 1024
  br i1 %368, label %369, label %371

369:                                              ; preds = %366
  %370 = call i32 @FAIL(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %371

371:                                              ; preds = %369, %366
  %372 = load i32, i32* %14, align 4
  %373 = icmp sgt i32 %372, 16
  br i1 %373, label %374, label %376

374:                                              ; preds = %371
  %375 = call i32 @FAIL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %376

376:                                              ; preds = %374, %371
  %377 = load i32, i32* %16, align 4
  %378 = sub nsw i32 %377, 2
  %379 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %380 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %379, i32 0, i32 1
  %381 = load i32*, i32** %380, align 8
  %382 = load i64, i64* @VGA_CRTC_V_TOTAL, align 8
  %383 = getelementptr inbounds i32, i32* %381, i64 %382
  store i32 %378, i32* %383, align 4
  store i32 16, i32* %22, align 4
  %384 = load i32, i32* %16, align 4
  %385 = and i32 %384, 256
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %376
  %388 = load i32, i32* %22, align 4
  %389 = or i32 %388, 1
  store i32 %389, i32* %22, align 4
  br label %390

390:                                              ; preds = %387, %376
  %391 = load i32, i32* %16, align 4
  %392 = and i32 %391, 512
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %397

394:                                              ; preds = %390
  %395 = load i32, i32* %22, align 4
  %396 = or i32 %395, 32
  store i32 %396, i32* %22, align 4
  br label %397

397:                                              ; preds = %394, %390
  %398 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %399 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %398, i32 0, i32 1
  %400 = load i32*, i32** %399, align 8
  %401 = load i64, i64* @VGA_CRTC_PRESET_ROW, align 8
  %402 = getelementptr inbounds i32, i32* %400, i64 %401
  store i32 0, i32* %402, align 4
  %403 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %404 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %403, i32 0, i32 1
  %405 = load i32*, i32** %404, align 8
  %406 = load i64, i64* @VGA_CRTC_MAX_SCAN, align 8
  %407 = getelementptr inbounds i32, i32* %405, i64 %406
  store i32 64, i32* %407, align 4
  %408 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %409 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %408, i32 0, i32 13
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %422

414:                                              ; preds = %397
  %415 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %416 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %415, i32 0, i32 1
  %417 = load i32*, i32** %416, align 8
  %418 = load i64, i64* @VGA_CRTC_MAX_SCAN, align 8
  %419 = getelementptr inbounds i32, i32* %417, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = or i32 %420, 128
  store i32 %421, i32* %419, align 4
  br label %422

422:                                              ; preds = %414, %397
  %423 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %424 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %423, i32 0, i32 1
  %425 = load i32*, i32** %424, align 8
  %426 = load i64, i64* @VGA_CRTC_CURSOR_START, align 8
  %427 = getelementptr inbounds i32, i32* %425, i64 %426
  store i32 32, i32* %427, align 4
  %428 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %429 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %428, i32 0, i32 1
  %430 = load i32*, i32** %429, align 8
  %431 = load i64, i64* @VGA_CRTC_CURSOR_END, align 8
  %432 = getelementptr inbounds i32, i32* %430, i64 %431
  store i32 0, i32* %432, align 4
  %433 = load i32, i32* %25, align 4
  %434 = load i32, i32* @MODE_CFB, align 4
  %435 = load i32, i32* @MODE_8BPP, align 4
  %436 = or i32 %434, %435
  %437 = and i32 %433, %436
  %438 = load i32, i32* @MODE_CFB, align 4
  %439 = icmp eq i32 %437, %438
  br i1 %439, label %440, label %443

440:                                              ; preds = %422
  %441 = load i32, i32* %18, align 4
  %442 = add nsw i32 %441, -1
  store i32 %442, i32* %18, align 4
  br label %443

443:                                              ; preds = %440, %422
  %444 = load i32, i32* %20, align 4
  %445 = load i32, i32* %17, align 4
  %446 = mul nsw i32 %444, %445
  %447 = load i32, i32* %18, align 4
  %448 = load i32, i32* %24, align 4
  %449 = ashr i32 %447, %448
  %450 = add nsw i32 %446, %449
  store i32 %450, i32* %21, align 4
  %451 = load i32, i32* %21, align 4
  %452 = ashr i32 %451, 8
  %453 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %454 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %453, i32 0, i32 1
  %455 = load i32*, i32** %454, align 8
  %456 = load i64, i64* @VGA_CRTC_START_HI, align 8
  %457 = getelementptr inbounds i32, i32* %455, i64 %456
  store i32 %452, i32* %457, align 4
  %458 = load i32, i32* %21, align 4
  %459 = and i32 %458, 255
  %460 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %461 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %460, i32 0, i32 1
  %462 = load i32*, i32** %461, align 8
  %463 = load i64, i64* @VGA_CRTC_START_LO, align 8
  %464 = getelementptr inbounds i32, i32* %462, i64 %463
  store i32 %459, i32* %464, align 4
  %465 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %466 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %465, i32 0, i32 1
  %467 = load i32*, i32** %466, align 8
  %468 = load i64, i64* @VGA_CRTC_CURSOR_HI, align 8
  %469 = getelementptr inbounds i32, i32* %467, i64 %468
  store i32 0, i32* %469, align 4
  %470 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %471 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %470, i32 0, i32 1
  %472 = load i32*, i32** %471, align 8
  %473 = load i64, i64* @VGA_CRTC_CURSOR_LO, align 8
  %474 = getelementptr inbounds i32, i32* %472, i64 %473
  store i32 0, i32* %474, align 4
  %475 = load i32, i32* %12, align 4
  %476 = sub nsw i32 %475, 1
  store i32 %476, i32* %21, align 4
  %477 = load i32, i32* %21, align 4
  %478 = and i32 %477, 255
  %479 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %480 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %479, i32 0, i32 1
  %481 = load i32*, i32** %480, align 8
  %482 = load i64, i64* @VGA_CRTC_V_DISP_END, align 8
  %483 = getelementptr inbounds i32, i32* %481, i64 %482
  store i32 %478, i32* %483, align 4
  %484 = load i32, i32* %21, align 4
  %485 = and i32 %484, 255
  %486 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %487 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %486, i32 0, i32 1
  %488 = load i32*, i32** %487, align 8
  %489 = load i64, i64* @VGA_CRTC_V_BLANK_START, align 8
  %490 = getelementptr inbounds i32, i32* %488, i64 %489
  store i32 %485, i32* %490, align 4
  %491 = load i32, i32* %21, align 4
  %492 = and i32 %491, 256
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %497

494:                                              ; preds = %443
  %495 = load i32, i32* %22, align 4
  %496 = or i32 %495, 10
  store i32 %496, i32* %22, align 4
  br label %497

497:                                              ; preds = %494, %443
  %498 = load i32, i32* %21, align 4
  %499 = and i32 %498, 512
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %511

501:                                              ; preds = %497
  %502 = load i32, i32* %22, align 4
  %503 = or i32 %502, 64
  store i32 %503, i32* %22, align 4
  %504 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %505 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %504, i32 0, i32 1
  %506 = load i32*, i32** %505, align 8
  %507 = load i64, i64* @VGA_CRTC_MAX_SCAN, align 8
  %508 = getelementptr inbounds i32, i32* %506, i64 %507
  %509 = load i32, i32* %508, align 4
  %510 = or i32 %509, 32
  store i32 %510, i32* %508, align 4
  br label %511

511:                                              ; preds = %501, %497
  %512 = load i32, i32* %13, align 4
  %513 = load i32, i32* %21, align 4
  %514 = add nsw i32 %513, %512
  store i32 %514, i32* %21, align 4
  %515 = load i32, i32* %21, align 4
  %516 = and i32 %515, 255
  %517 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %518 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %517, i32 0, i32 1
  %519 = load i32*, i32** %518, align 8
  %520 = load i64, i64* @VGA_CRTC_V_SYNC_START, align 8
  %521 = getelementptr inbounds i32, i32* %519, i64 %520
  store i32 %516, i32* %521, align 4
  %522 = load i32, i32* %21, align 4
  %523 = and i32 %522, 256
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %528

525:                                              ; preds = %511
  %526 = load i32, i32* %22, align 4
  %527 = or i32 %526, 4
  store i32 %527, i32* %22, align 4
  br label %528

528:                                              ; preds = %525, %511
  %529 = load i32, i32* %21, align 4
  %530 = and i32 %529, 512
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %535

532:                                              ; preds = %528
  %533 = load i32, i32* %22, align 4
  %534 = or i32 %533, 128
  store i32 %534, i32* %22, align 4
  br label %535

535:                                              ; preds = %532, %528
  %536 = load i32, i32* %14, align 4
  %537 = load i32, i32* %21, align 4
  %538 = add nsw i32 %537, %536
  store i32 %538, i32* %21, align 4
  %539 = load i32, i32* %21, align 4
  %540 = and i32 %539, 15
  %541 = and i32 %540, -17
  %542 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %543 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %542, i32 0, i32 1
  %544 = load i32*, i32** %543, align 8
  %545 = load i64, i64* @VGA_CRTC_V_SYNC_END, align 8
  %546 = getelementptr inbounds i32, i32* %544, i64 %545
  store i32 %541, i32* %546, align 4
  %547 = load i32, i32* %15, align 4
  %548 = sub nsw i32 %547, 1
  %549 = load i32, i32* %21, align 4
  %550 = add nsw i32 %549, %548
  store i32 %550, i32* %21, align 4
  %551 = load i32, i32* %21, align 4
  %552 = and i32 %551, 255
  %553 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %554 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %553, i32 0, i32 1
  %555 = load i32*, i32** %554, align 8
  %556 = load i64, i64* @VGA_CRTC_V_BLANK_END, align 8
  %557 = getelementptr inbounds i32, i32* %555, i64 %556
  store i32 %552, i32* %557, align 4
  %558 = load i32, i32* %17, align 4
  %559 = icmp sge i32 %558, 512
  br i1 %559, label %560, label %562

560:                                              ; preds = %535
  %561 = call i32 @FAIL(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %562

562:                                              ; preds = %560, %535
  %563 = load i32, i32* %17, align 4
  %564 = ashr i32 %563, 1
  %565 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %566 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %565, i32 0, i32 1
  %567 = load i32*, i32** %566, align 8
  %568 = load i64, i64* @VGA_CRTC_OFFSET, align 8
  %569 = getelementptr inbounds i32, i32* %567, i64 %568
  store i32 %564, i32* %569, align 4
  %570 = load i32, i32* %25, align 4
  %571 = load i32, i32* @MODE_SKIP4, align 4
  %572 = and i32 %570, %571
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %580

574:                                              ; preds = %562
  %575 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %576 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %575, i32 0, i32 1
  %577 = load i32*, i32** %576, align 8
  %578 = load i64, i64* @VGA_CRTC_UNDERLINE, align 8
  %579 = getelementptr inbounds i32, i32* %577, i64 %578
  store i32 95, i32* %579, align 4
  br label %586

580:                                              ; preds = %562
  %581 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %582 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %581, i32 0, i32 1
  %583 = load i32*, i32** %582, align 8
  %584 = load i64, i64* @VGA_CRTC_UNDERLINE, align 8
  %585 = getelementptr inbounds i32, i32* %583, i64 %584
  store i32 31, i32* %585, align 4
  br label %586

586:                                              ; preds = %580, %574
  %587 = load i32, i32* %23, align 4
  %588 = load i32, i32* %25, align 4
  %589 = load i32, i32* @MODE_TEXT, align 4
  %590 = and i32 %588, %589
  %591 = icmp ne i32 %590, 0
  %592 = zext i1 %591 to i64
  %593 = select i1 %591, i32 163, i32 227
  %594 = or i32 %587, %593
  %595 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %596 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %595, i32 0, i32 1
  %597 = load i32*, i32** %596, align 8
  %598 = load i64, i64* @VGA_CRTC_MODE, align 8
  %599 = getelementptr inbounds i32, i32* %597, i64 %598
  store i32 %594, i32* %599, align 4
  %600 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %601 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %600, i32 0, i32 1
  %602 = load i32*, i32** %601, align 8
  %603 = load i64, i64* @VGA_CRTC_LINE_COMPARE, align 8
  %604 = getelementptr inbounds i32, i32* %602, i64 %603
  store i32 255, i32* %604, align 4
  %605 = load i32, i32* %22, align 4
  %606 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %607 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %606, i32 0, i32 1
  %608 = load i32*, i32** %607, align 8
  %609 = load i64, i64* @VGA_CRTC_OVERFLOW, align 8
  %610 = getelementptr inbounds i32, i32* %608, i64 %609
  store i32 %605, i32* %610, align 4
  %611 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %612 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %611, i32 0, i32 2
  store i32 0, i32* %612, align 8
  %613 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %614 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %613, i32 0, i32 3
  store i32 227, i32* %614, align 4
  %615 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %616 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %615, i32 0, i32 14
  %617 = load i32, i32* %616, align 8
  %618 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %619 = and i32 %617, %618
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %626

621:                                              ; preds = %586
  %622 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %623 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %622, i32 0, i32 3
  %624 = load i32, i32* %623, align 4
  %625 = and i32 %624, -65
  store i32 %625, i32* %623, align 4
  br label %626

626:                                              ; preds = %621, %586
  %627 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %628 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %627, i32 0, i32 14
  %629 = load i32, i32* %628, align 8
  %630 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %631 = and i32 %629, %630
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %638

633:                                              ; preds = %626
  %634 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %635 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %634, i32 0, i32 3
  %636 = load i32, i32* %635, align 4
  %637 = and i32 %636, -129
  store i32 %637, i32* %635, align 4
  br label %638

638:                                              ; preds = %633, %626
  %639 = load i32, i32* %25, align 4
  %640 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %641 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %640, i32 0, i32 4
  store i32 %639, i32* %641, align 8
  %642 = load i32, i32* %25, align 4
  %643 = load i32, i32* @MODE_8BPP, align 4
  %644 = and i32 %642, %643
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %653

646:                                              ; preds = %638
  %647 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %648 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %649 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %648, i32 0, i32 23
  %650 = load i32, i32* %649, align 8
  %651 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %652 = call i32 @vga16fb_clock_chip(%struct.vga16fb_par* %647, i32 %650, %struct.fb_info* %651, i32 1, i32 2)
  br label %660

653:                                              ; preds = %638
  %654 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %655 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %656 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %655, i32 0, i32 23
  %657 = load i32, i32* %656, align 8
  %658 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %659 = call i32 @vga16fb_clock_chip(%struct.vga16fb_par* %654, i32 %657, %struct.fb_info* %658, i32 1, i32 1)
  br label %660

660:                                              ; preds = %653, %646
  %661 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %662 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %661, i32 0, i32 19
  %663 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %662, i32 0, i32 1
  store i64 0, i64* %663, align 8
  %664 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %665 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %664, i32 0, i32 20
  %666 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %665, i32 0, i32 1
  store i64 0, i64* %666, align 8
  %667 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %668 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %667, i32 0, i32 21
  %669 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %668, i32 0, i32 1
  store i64 0, i64* %669, align 8
  %670 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %671 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %670, i32 0, i32 22
  %672 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %671, i32 0, i32 1
  store i64 0, i64* %672, align 8
  %673 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %674 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %673, i32 0, i32 5
  %675 = load i64, i64* %674, align 8
  %676 = icmp ne i64 %675, 0
  %677 = zext i1 %676 to i64
  %678 = select i1 %676, i32 6, i32 2
  %679 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %680 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %679, i32 0, i32 20
  %681 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %680, i32 0, i32 0
  store i32 %678, i32* %681, align 8
  %682 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %683 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %682, i32 0, i32 21
  %684 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %683, i32 0, i32 0
  store i32 %678, i32* %684, align 8
  %685 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %686 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %685, i32 0, i32 22
  %687 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %686, i32 0, i32 0
  store i32 %678, i32* %687, align 8
  %688 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %689 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %688, i32 0, i32 19
  %690 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %689, i32 0, i32 0
  store i64 0, i64* %690, align 8
  %691 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %692 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %693 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %692, i32 0, i32 18
  store i32 %691, i32* %693, align 8
  %694 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %695 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %694, i32 0, i32 15
  store i32 -1, i32* %695, align 4
  %696 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %697 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %696, i32 0, i32 16
  store i32 -1, i32* %697, align 8
  %698 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %699 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %698, i32 0, i32 17
  store i64 0, i64* %699, align 8
  store i32 0, i32* %3, align 4
  br label %700

700:                                              ; preds = %660, %296, %86, %67, %46
  %701 = load i32, i32* %3, align 4
  ret i32 %701
}

declare dso_local i32 @FAIL(i8*) #1

declare dso_local i32 @vga16fb_clock_chip(%struct.vga16fb_par*, i32, %struct.fb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
