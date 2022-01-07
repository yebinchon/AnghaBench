; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_set_fb_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_set_fb_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.omapfb_plane_struct* }
%struct.omapfb_plane_struct = type { i64, i64, %struct.omapfb_device* }
%struct.omapfb_device = type { %struct.TYPE_10__, %struct.lcd_panel* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.lcd_panel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@OMAPFB_COLOR_RGB444 = common dso_local global i64 0, align 8
@OMAPFB_PLANE_XRES_MIN = common dso_local global i32 0, align 4
@OMAPFB_PLANE_YRES_MIN = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_var_screeninfo*)* @set_fb_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_fb_var(%struct.fb_info* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.omapfb_plane_struct*, align 8
  %14 = alloca %struct.omapfb_device*, align 8
  %15 = alloca %struct.lcd_panel*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 0
  %18 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %17, align 8
  store %struct.omapfb_plane_struct* %18, %struct.omapfb_plane_struct** %13, align 8
  %19 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %13, align 8
  %20 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %19, i32 0, i32 2
  %21 = load %struct.omapfb_device*, %struct.omapfb_device** %20, align 8
  store %struct.omapfb_device* %21, %struct.omapfb_device** %14, align 8
  %22 = load %struct.omapfb_device*, %struct.omapfb_device** %14, align 8
  %23 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %22, i32 0, i32 1
  %24 = load %struct.lcd_panel*, %struct.lcd_panel** %23, align 8
  store %struct.lcd_panel* %24, %struct.lcd_panel** %15, align 8
  %25 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %13, align 8
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %27 = call i64 @set_color_mode(%struct.omapfb_plane_struct* %25, %struct.fb_var_screeninfo* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %429

32:                                               ; preds = %2
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %6, align 4
  %36 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %13, align 8
  %37 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @OMAPFB_COLOR_RGB444, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 16, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %32
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %92 [
    i32 0, label %46
    i32 180, label %46
    i32 90, label %69
    i32 270, label %69
  ]

46:                                               ; preds = %42, %42
  %47 = load i32, i32* @OMAPFB_PLANE_XRES_MIN, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.lcd_panel*, %struct.lcd_panel** %15, align 8
  %49 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @OMAPFB_PLANE_YRES_MIN, align 4
  store i32 %51, i32* %11, align 4
  %52 = load %struct.lcd_panel*, %struct.lcd_panel** %15, align 8
  %53 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  %55 = call i32 (...) @cpu_is_omap15xx()
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %46
  %58 = load %struct.lcd_panel*, %struct.lcd_panel** %15, align 8
  %59 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.lcd_panel*, %struct.lcd_panel** %15, align 8
  %64 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %57, %46
  br label %95

69:                                               ; preds = %42, %42
  %70 = load i32, i32* @OMAPFB_PLANE_YRES_MIN, align 4
  store i32 %70, i32* %9, align 4
  %71 = load %struct.lcd_panel*, %struct.lcd_panel** %15, align 8
  %72 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* @OMAPFB_PLANE_XRES_MIN, align 4
  store i32 %74, i32* %11, align 4
  %75 = load %struct.lcd_panel*, %struct.lcd_panel** %15, align 8
  %76 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  %78 = call i32 (...) @cpu_is_omap15xx()
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %69
  %81 = load %struct.lcd_panel*, %struct.lcd_panel** %15, align 8
  %82 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.lcd_panel*, %struct.lcd_panel** %15, align 8
  %87 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %80, %69
  br label %95

92:                                               ; preds = %42
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %429

95:                                               ; preds = %91, %68
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %104 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %101, %95
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %114 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %111, %105
  %116 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %117 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %124 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %121, %115
  %126 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %127 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %134 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %131, %125
  %136 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %137 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %140 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %135
  %144 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %145 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %148 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %143, %135
  %150 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %151 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %154 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %149
  %158 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %159 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %162 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %161, i32 0, i32 5
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %157, %149
  %164 = load %struct.omapfb_device*, %struct.omapfb_device** %14, align 8
  %165 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %13, align 8
  %169 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %7, align 8
  %174 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %175 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = mul nsw i32 %176, %177
  %179 = sdiv i32 %178, 8
  %180 = sext i32 %179 to i64
  store i64 %180, i64* %8, align 8
  %181 = load i64, i64* %8, align 8
  %182 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %183 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = mul i64 %181, %185
  %187 = load i64, i64* %7, align 8
  %188 = icmp ugt i64 %186, %187
  br i1 %188, label %189, label %274

189:                                              ; preds = %163
  %190 = load i64, i64* %7, align 8
  %191 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %192 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = udiv i64 %190, %194
  store i64 %195, i64* %8, align 8
  %196 = load i64, i64* %8, align 8
  %197 = mul i64 %196, 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = udiv i64 %197, %199
  %201 = trunc i64 %200 to i32
  %202 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %203 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %202, i32 0, i32 4
  store i32 %201, i32* %203, align 8
  %204 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %205 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %208 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %230

211:                                              ; preds = %189
  %212 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %213 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %216 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %215, i32 0, i32 4
  store i32 %214, i32* %216, align 8
  %217 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %218 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = mul nsw i32 %219, %220
  %222 = sdiv i32 %221, 8
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %8, align 8
  %224 = load i64, i64* %7, align 8
  %225 = load i64, i64* %8, align 8
  %226 = udiv i64 %224, %225
  %227 = trunc i64 %226 to i32
  %228 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %229 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %228, i32 0, i32 5
  store i32 %227, i32* %229, align 4
  br label %230

230:                                              ; preds = %211, %189
  %231 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %232 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %235 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp slt i32 %233, %236
  br i1 %237, label %238, label %244

238:                                              ; preds = %230
  %239 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %240 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %243 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 8
  br label %244

244:                                              ; preds = %238, %230
  %245 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %246 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %249 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %244
  %253 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %254 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %257 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %256, i32 0, i32 3
  store i32 %255, i32* %257, align 4
  br label %258

258:                                              ; preds = %252, %244
  %259 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %260 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %9, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %270, label %264

264:                                              ; preds = %258
  %265 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %266 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %11, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %273

270:                                              ; preds = %264, %258
  %271 = load i32, i32* @EINVAL, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %3, align 4
  br label %429

273:                                              ; preds = %264
  br label %274

274:                                              ; preds = %273, %163
  %275 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %276 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %279 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %278, i32 0, i32 6
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %277, %280
  %282 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %283 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = icmp sgt i32 %281, %284
  br i1 %285, label %286, label %296

286:                                              ; preds = %274
  %287 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %288 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %291 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = sub nsw i32 %289, %292
  %294 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %295 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %294, i32 0, i32 6
  store i32 %293, i32* %295, align 8
  br label %296

296:                                              ; preds = %286, %274
  %297 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %298 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %301 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %299, %302
  %304 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %305 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 4
  %307 = icmp sgt i32 %303, %306
  br i1 %307, label %308, label %318

308:                                              ; preds = %296
  %309 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %310 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %313 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = sub nsw i32 %311, %314
  %316 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %317 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %316, i32 0, i32 7
  store i32 %315, i32* %317, align 4
  br label %318

318:                                              ; preds = %308, %296
  %319 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %13, align 8
  %320 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @OMAPFB_COLOR_RGB444, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %352

324:                                              ; preds = %318
  %325 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %326 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %325, i32 0, i32 22
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  store i32 8, i32* %327, align 8
  %328 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %329 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %328, i32 0, i32 22
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 1
  store i32 4, i32* %330, align 4
  %331 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %332 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %331, i32 0, i32 22
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 2
  store i64 0, i64* %333, align 8
  %334 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %335 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %334, i32 0, i32 21
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 0
  store i32 4, i32* %336, align 8
  %337 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %338 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %337, i32 0, i32 21
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 1
  store i32 4, i32* %339, align 4
  %340 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %341 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %340, i32 0, i32 21
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 2
  store i64 0, i64* %342, align 8
  %343 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %344 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %343, i32 0, i32 20
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 2
  store i64 0, i64* %345, align 8
  %346 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %347 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %346, i32 0, i32 20
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 0
  store i32 4, i32* %348, align 8
  %349 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %350 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %349, i32 0, i32 20
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 1
  store i64 0, i64* %351, align 8
  br label %380

352:                                              ; preds = %318
  %353 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %354 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %353, i32 0, i32 22
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 0
  store i32 11, i32* %355, align 8
  %356 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %357 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %356, i32 0, i32 22
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 1
  store i32 5, i32* %358, align 4
  %359 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %360 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %359, i32 0, i32 22
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 2
  store i64 0, i64* %361, align 8
  %362 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %363 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %362, i32 0, i32 21
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 0
  store i32 5, i32* %364, align 8
  %365 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %366 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %365, i32 0, i32 21
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 1
  store i32 6, i32* %367, align 4
  %368 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %369 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %368, i32 0, i32 21
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 2
  store i64 0, i64* %370, align 8
  %371 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %372 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %371, i32 0, i32 20
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 2
  store i64 0, i64* %373, align 8
  %374 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %375 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %374, i32 0, i32 20
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 0
  store i32 5, i32* %376, align 8
  %377 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %378 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %377, i32 0, i32 20
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 1
  store i64 0, i64* %379, align 8
  br label %380

380:                                              ; preds = %352, %324
  %381 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %382 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %381, i32 0, i32 8
  store i32 -1, i32* %382, align 8
  %383 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %384 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %383, i32 0, i32 9
  store i32 -1, i32* %384, align 4
  %385 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %386 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %385, i32 0, i32 19
  store i64 0, i64* %386, align 8
  %387 = load %struct.lcd_panel*, %struct.lcd_panel** %15, align 8
  %388 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 4
  %390 = sdiv i32 %389, 100
  %391 = sdiv i32 10000000, %390
  %392 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %393 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %392, i32 0, i32 10
  store i32 %391, i32* %393, align 8
  %394 = load %struct.lcd_panel*, %struct.lcd_panel** %15, align 8
  %395 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %394, i32 0, i32 8
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %398 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %397, i32 0, i32 18
  store i32 %396, i32* %398, align 8
  %399 = load %struct.lcd_panel*, %struct.lcd_panel** %15, align 8
  %400 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %399, i32 0, i32 7
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %403 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %402, i32 0, i32 17
  store i32 %401, i32* %403, align 4
  %404 = load %struct.lcd_panel*, %struct.lcd_panel** %15, align 8
  %405 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %404, i32 0, i32 6
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %408 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %407, i32 0, i32 16
  store i32 %406, i32* %408, align 8
  %409 = load %struct.lcd_panel*, %struct.lcd_panel** %15, align 8
  %410 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %409, i32 0, i32 5
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %413 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %412, i32 0, i32 15
  store i32 %411, i32* %413, align 4
  %414 = load %struct.lcd_panel*, %struct.lcd_panel** %15, align 8
  %415 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %414, i32 0, i32 4
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %418 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %417, i32 0, i32 14
  store i32 %416, i32* %418, align 8
  %419 = load %struct.lcd_panel*, %struct.lcd_panel** %15, align 8
  %420 = getelementptr inbounds %struct.lcd_panel, %struct.lcd_panel* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %423 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %422, i32 0, i32 13
  store i32 %421, i32* %423, align 4
  %424 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %425 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %426 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %425, i32 0, i32 12
  store i32 %424, i32* %426, align 8
  %427 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %428 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %427, i32 0, i32 11
  store i64 0, i64* %428, align 8
  store i32 0, i32* %3, align 4
  br label %429

429:                                              ; preds = %380, %270, %92, %29
  %430 = load i32, i32* %3, align 4
  ret i32 %430
}

declare dso_local i64 @set_color_mode(%struct.omapfb_plane_struct*, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @cpu_is_omap15xx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
