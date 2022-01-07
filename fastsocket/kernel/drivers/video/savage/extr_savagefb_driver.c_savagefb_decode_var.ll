; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_driver.c_savagefb_decode_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_driver.c_savagefb_decode_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.savagefb_par = type { i32, i32, i64, i64 }
%struct.savage_reg = type { i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xtimings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"savagefb_decode_var\00", align 1
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@S3_SAVAGE3D = common dso_local global i64 0, align 8
@S3_SAVAGE2000 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.savagefb_par*, %struct.savage_reg*)* @savagefb_decode_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savagefb_decode_var(%struct.fb_var_screeninfo* %0, %struct.savagefb_par* %1, %struct.savage_reg* %2) #0 {
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.savagefb_par*, align 8
  %6 = alloca %struct.savage_reg*, align 8
  %7 = alloca %struct.xtimings, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.savagefb_par* %1, %struct.savagefb_par** %5, align 8
  store %struct.savage_reg* %2, %struct.savage_reg** %6, align 8
  store i8 0, i8* %15, align 1
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = call i32 @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @memset(%struct.xtimings* %7, i32 0, i32 48)
  %22 = load i32, i32* %16, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 10000, i32* %16, align 4
  br label %25

25:                                               ; preds = %24, %3
  %26 = load i32, i32* %16, align 4
  %27 = udiv i32 1000000000, %26
  %28 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %32, %25
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %39 = and i32 %37, %38
  %40 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %45 = and i32 %43, %44
  %46 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 3
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  %57 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 4
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %59, %62
  %64 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 5
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  %71 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 6
  store i32 %70, i32* %71, align 4
  %72 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 7
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  %82 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 8
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %84, %87
  %89 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 9
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %93 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %91, %94
  %96 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 10
  store i32 %95, i32* %96, align 4
  %97 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %97, i32 0, i32 12
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 11
  store i32 %99, i32* %100, align 4
  %101 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %105 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 11
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %110 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 16
  br i1 %114, label %115, label %134

115:                                              ; preds = %34
  %116 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %117 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @S3_SAVAGE3D, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %123, 2
  store i32 %124, i32* %122, align 4
  %125 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %126, 2
  store i32 %127, i32* %125, align 4
  %128 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %129, 2
  store i32 %130, i32* %128, align 4
  %131 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %132, 2
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %121, %115, %34
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %136 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %137 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %138 = call i32 @vgaHWInit(%struct.fb_var_screeninfo* %135, %struct.savagefb_par* %136, %struct.xtimings* %7, %struct.savage_reg* %137)
  %139 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %9, align 4
  %141 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %142 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %141, i32 0, i32 0
  store i32 0, i32* %142, align 8
  %143 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %144 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %143, i32 0, i32 10
  %145 = load i32, i32* %144, align 4
  switch i32 %145, label %212 [
    i32 8, label %146
    i32 15, label %162
    i32 16, label %184
    i32 24, label %206
    i32 32, label %209
  ]

146:                                              ; preds = %134
  %147 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %148 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @S3_SAVAGE2000, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load i32, i32* %9, align 4
  %154 = icmp sge i32 %153, 230000
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %157 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %156, i32 0, i32 0
  store i32 16, i32* %157, align 8
  br label %161

158:                                              ; preds = %152, %146
  %159 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %160 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %159, i32 0, i32 0
  store i32 0, i32* %160, align 8
  br label %161

161:                                              ; preds = %158, %155
  br label %212

162:                                              ; preds = %134
  %163 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %164 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @S3_SAVAGE_MOBILE_SERIES(i64 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %162
  %169 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %170 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @S3_SAVAGE2000, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %168
  %175 = load i32, i32* %9, align 4
  %176 = icmp sge i32 %175, 230000
  br i1 %176, label %177, label %180

177:                                              ; preds = %174, %162
  %178 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %179 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %178, i32 0, i32 0
  store i32 48, i32* %179, align 8
  br label %183

180:                                              ; preds = %174, %168
  %181 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %182 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %181, i32 0, i32 0
  store i32 32, i32* %182, align 8
  br label %183

183:                                              ; preds = %180, %177
  br label %212

184:                                              ; preds = %134
  %185 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %186 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @S3_SAVAGE_MOBILE_SERIES(i64 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %199, label %190

190:                                              ; preds = %184
  %191 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %192 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @S3_SAVAGE2000, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %190
  %197 = load i32, i32* %9, align 4
  %198 = icmp sge i32 %197, 230000
  br i1 %198, label %199, label %202

199:                                              ; preds = %196, %184
  %200 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %201 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %200, i32 0, i32 0
  store i32 80, i32* %201, align 8
  br label %205

202:                                              ; preds = %196, %190
  %203 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %204 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %203, i32 0, i32 0
  store i32 64, i32* %204, align 8
  br label %205

205:                                              ; preds = %202, %199
  br label %212

206:                                              ; preds = %134
  %207 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %208 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %207, i32 0, i32 0
  store i32 112, i32* %208, align 8
  br label %212

209:                                              ; preds = %134
  %210 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %211 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %210, i32 0, i32 0
  store i32 208, i32* %211, align 8
  br label %212

212:                                              ; preds = %134, %209, %206, %205, %183, %161
  %213 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %214 = call i32 @vga_out8(i32 980, i32 58, %struct.savagefb_par* %213)
  %215 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %216 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %215)
  %217 = trunc i32 %216 to i8
  store i8 %217, i8* %15, align 1
  %218 = load i8, i8* %15, align 1
  %219 = zext i8 %218 to i32
  %220 = and i32 %219, 127
  %221 = or i32 %220, 21
  %222 = trunc i32 %221 to i8
  %223 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %224 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %223, i32 0, i32 1
  store i8 %222, i8* %224, align 4
  %225 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %226 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %225, i32 0, i32 2
  store i32 0, i32* %226, align 8
  %227 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %228 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %227, i32 0, i32 3
  store i32 140, i32* %228, align 4
  %229 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %230 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %229, i32 0, i32 4
  store i32 137, i32* %230, align 8
  %231 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %232 = call i32 @vga_out8(i32 980, i32 88, %struct.savagefb_par* %231)
  %233 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %234 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %233)
  %235 = and i32 %234, 128
  %236 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %237 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %236, i32 0, i32 5
  store i32 %235, i32* %237, align 4
  %238 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %239 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, 19
  store i32 %241, i32* %239, align 4
  %242 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %243 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %242, i32 0, i32 6
  store i32 131, i32* %243, align 8
  %244 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %245 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %244, i32 0, i32 7
  store i32 0, i32* %245, align 4
  %246 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %247 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %246, i32 0, i32 10
  store i32 0, i32* %247, align 8
  %248 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %249 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %248, i32 0, i32 9
  store i32 0, i32* %249, align 4
  %250 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %251 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %250, i32 0, i32 8
  store i32 0, i32* %251, align 8
  %252 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %253 = call i32 @vga_out8(i32 980, i32 64, %struct.savagefb_par* %252)
  %254 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %255 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %254)
  %256 = and i32 %255, -2
  %257 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %258 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %257, i32 0, i32 11
  store i32 %256, i32* %258, align 4
  %259 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %260 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %259, i32 0, i32 12
  store i32 66560, i32* %260, align 8
  %261 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %262 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %261, i32 0, i32 13
  store i32 0, i32* %262, align 4
  %263 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %264 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %263, i32 0, i32 14
  store i32 2056, i32* %264, align 8
  %265 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %266 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %265, i32 0, i32 15
  store i32 134744080, i32* %266, align 4
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @SavageCalcClock(i32 %267, i32 1, i32 1, i32 127, i32 0, i32 4, i32 180000, i32 360000, i32* %12, i32* %13, i32* %14)
  %269 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %270 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = icmp sle i64 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %212
  %274 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %275 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %274, i32 0, i32 16
  store i32 255, i32* %275, align 8
  %276 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %277 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %276, i32 0, i32 17
  store i32 255, i32* %277, align 4
  br label %287

278:                                              ; preds = %212
  %279 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %280 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %283 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %282, i32 0, i32 17
  %284 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %285 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %284, i32 0, i32 16
  %286 = call i32 @common_calc_clock(i64 %281, i32 1, i32 1, i32 31, i32 0, i32 3, i32 135000, i32 270000, i32* %283, i32* %285)
  br label %287

287:                                              ; preds = %278, %273
  %288 = load i32, i32* %14, align 4
  %289 = shl i32 %288, 6
  %290 = load i32, i32* %13, align 4
  %291 = and i32 %290, 63
  %292 = or i32 %289, %291
  %293 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %294 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %293, i32 0, i32 18
  store i32 %292, i32* %294, align 8
  %295 = load i32, i32* %12, align 4
  %296 = and i32 %295, 255
  %297 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %298 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %297, i32 0, i32 19
  store i32 %296, i32* %298, align 4
  %299 = load i32, i32* %14, align 4
  %300 = and i32 %299, 4
  %301 = load i32, i32* %12, align 4
  %302 = and i32 %301, 256
  %303 = lshr i32 %302, 5
  %304 = or i32 %300, %303
  %305 = load i32, i32* %13, align 4
  %306 = and i32 %305, 64
  %307 = lshr i32 %306, 2
  %308 = or i32 %304, %307
  %309 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %310 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %309, i32 0, i32 20
  store i32 %308, i32* %310, align 8
  %311 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %312 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %311, i32 0, i32 10
  %313 = load i32, i32* %312, align 4
  %314 = icmp slt i32 %313, 24
  br i1 %314, label %315, label %320

315:                                              ; preds = %287
  %316 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %317 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %316, i32 0, i32 12
  %318 = load i32, i32* %317, align 8
  %319 = sub nsw i32 %318, 32768
  store i32 %319, i32* %317, align 8
  br label %325

320:                                              ; preds = %287
  %321 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %322 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %321, i32 0, i32 12
  %323 = load i32, i32* %322, align 8
  %324 = sub nsw i32 %323, 16384
  store i32 %324, i32* %322, align 8
  br label %325

325:                                              ; preds = %320, %315
  %326 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %325
  %330 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %331 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %330, i32 0, i32 21
  store i32 32, i32* %331, align 4
  br label %335

332:                                              ; preds = %325
  %333 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %334 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %333, i32 0, i32 21
  store i32 0, i32* %334, align 4
  br label %335

335:                                              ; preds = %332, %329
  %336 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %337 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %336, i32 0, i32 22
  store i32 16, i32* %337, align 8
  %338 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 6
  %339 = load i32, i32* %338, align 4
  %340 = ashr i32 %339, 3
  %341 = sub nsw i32 %340, 5
  %342 = and i32 %341, 256
  %343 = ashr i32 %342, 8
  %344 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 3
  %345 = load i32, i32* %344, align 4
  %346 = ashr i32 %345, 3
  %347 = sub nsw i32 %346, 1
  %348 = and i32 %347, 256
  %349 = ashr i32 %348, 7
  %350 = or i32 %343, %349
  %351 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 4
  %352 = load i32, i32* %351, align 4
  %353 = ashr i32 %352, 3
  %354 = sub nsw i32 %353, 1
  %355 = and i32 %354, 256
  %356 = ashr i32 %355, 6
  %357 = or i32 %350, %356
  %358 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 4
  %359 = load i32, i32* %358, align 4
  %360 = and i32 %359, 2048
  %361 = ashr i32 %360, 7
  %362 = or i32 %357, %361
  store i32 %362, i32* %10, align 4
  %363 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 5
  %364 = load i32, i32* %363, align 4
  %365 = ashr i32 %364, 3
  %366 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 4
  %367 = load i32, i32* %366, align 4
  %368 = ashr i32 %367, 3
  %369 = sub nsw i32 %365, %368
  %370 = icmp sgt i32 %369, 64
  br i1 %370, label %371, label %374

371:                                              ; preds = %335
  %372 = load i32, i32* %10, align 4
  %373 = or i32 %372, 8
  store i32 %373, i32* %10, align 4
  br label %374

374:                                              ; preds = %371, %335
  %375 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 5
  %376 = load i32, i32* %375, align 4
  %377 = ashr i32 %376, 3
  %378 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 4
  %379 = load i32, i32* %378, align 4
  %380 = ashr i32 %379, 3
  %381 = sub nsw i32 %377, %380
  %382 = icmp sgt i32 %381, 32
  br i1 %382, label %383, label %386

383:                                              ; preds = %374
  %384 = load i32, i32* %10, align 4
  %385 = or i32 %384, 32
  store i32 %385, i32* %10, align 4
  br label %386

386:                                              ; preds = %383, %374
  %387 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %388 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %387, i32 0, i32 23
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 0
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* %10, align 4
  %393 = and i32 %392, 1
  %394 = shl i32 %393, 8
  %395 = add nsw i32 %391, %394
  %396 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %397 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %396, i32 0, i32 23
  %398 = load i32*, i32** %397, align 8
  %399 = getelementptr inbounds i32, i32* %398, i64 4
  %400 = load i32, i32* %399, align 4
  %401 = add nsw i32 %395, %400
  %402 = load i32, i32* %10, align 4
  %403 = and i32 %402, 16
  %404 = shl i32 %403, 4
  %405 = add nsw i32 %401, %404
  %406 = add nsw i32 %405, 1
  %407 = sdiv i32 %406, 2
  store i32 %407, i32* %11, align 4
  %408 = load i32, i32* %11, align 4
  %409 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %410 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %409, i32 0, i32 23
  %411 = load i32*, i32** %410, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 4
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* %10, align 4
  %415 = and i32 %414, 16
  %416 = shl i32 %415, 4
  %417 = add nsw i32 %413, %416
  %418 = sub nsw i32 %408, %417
  %419 = icmp slt i32 %418, 4
  br i1 %419, label %420, label %464

420:                                              ; preds = %386
  %421 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %422 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %421, i32 0, i32 23
  %423 = load i32*, i32** %422, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 4
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* %10, align 4
  %427 = and i32 %426, 16
  %428 = shl i32 %427, 4
  %429 = add nsw i32 %425, %428
  %430 = add nsw i32 %429, 4
  %431 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %432 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %431, i32 0, i32 23
  %433 = load i32*, i32** %432, align 8
  %434 = getelementptr inbounds i32, i32* %433, i64 0
  %435 = load i32, i32* %434, align 4
  %436 = load i32, i32* %10, align 4
  %437 = and i32 %436, 1
  %438 = shl i32 %437, 8
  %439 = add nsw i32 %435, %438
  %440 = icmp sle i32 %430, %439
  br i1 %440, label %441, label %452

441:                                              ; preds = %420
  %442 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %443 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %442, i32 0, i32 23
  %444 = load i32*, i32** %443, align 8
  %445 = getelementptr inbounds i32, i32* %444, i64 4
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* %10, align 4
  %448 = and i32 %447, 16
  %449 = shl i32 %448, 4
  %450 = add nsw i32 %446, %449
  %451 = add nsw i32 %450, 4
  store i32 %451, i32* %11, align 4
  br label %463

452:                                              ; preds = %420
  %453 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %454 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %453, i32 0, i32 23
  %455 = load i32*, i32** %454, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 0
  %457 = load i32, i32* %456, align 4
  %458 = load i32, i32* %10, align 4
  %459 = and i32 %458, 1
  %460 = shl i32 %459, 8
  %461 = add nsw i32 %457, %460
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %11, align 4
  br label %463

463:                                              ; preds = %452, %441
  br label %464

464:                                              ; preds = %463, %386
  %465 = load i32, i32* %11, align 4
  %466 = and i32 %465, 255
  %467 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %468 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %467, i32 0, i32 24
  store i32 %466, i32* %468, align 8
  %469 = load i32, i32* %11, align 4
  %470 = and i32 %469, 256
  %471 = ashr i32 %470, 2
  %472 = load i32, i32* %10, align 4
  %473 = or i32 %472, %471
  store i32 %473, i32* %10, align 4
  %474 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %475 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %474, i32 0, i32 23
  %476 = load i32*, i32** %475, align 8
  %477 = getelementptr inbounds i32, i32* %476, i64 0
  %478 = load i32, i32* %477, align 4
  %479 = load i32, i32* %10, align 4
  %480 = and i32 %479, 1
  %481 = shl i32 %480, 8
  %482 = add nsw i32 %478, %481
  %483 = sdiv i32 %482, 2
  %484 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %485 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %484, i32 0, i32 25
  store i32 %483, i32* %485, align 4
  %486 = load i32, i32* %10, align 4
  %487 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %488 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %487, i32 0, i32 26
  store i32 %486, i32* %488, align 8
  %489 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 10
  %490 = load i32, i32* %489, align 4
  %491 = sub nsw i32 %490, 2
  %492 = and i32 %491, 1024
  %493 = ashr i32 %492, 10
  %494 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 7
  %495 = load i32, i32* %494, align 4
  %496 = sub nsw i32 %495, 1
  %497 = and i32 %496, 1024
  %498 = ashr i32 %497, 9
  %499 = or i32 %493, %498
  %500 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 8
  %501 = load i32, i32* %500, align 4
  %502 = and i32 %501, 1024
  %503 = ashr i32 %502, 8
  %504 = or i32 %499, %503
  %505 = getelementptr inbounds %struct.xtimings, %struct.xtimings* %7, i32 0, i32 8
  %506 = load i32, i32* %505, align 4
  %507 = and i32 %506, 1024
  %508 = ashr i32 %507, 6
  %509 = or i32 %504, %508
  %510 = or i32 %509, 64
  %511 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %512 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %511, i32 0, i32 27
  store i32 %510, i32* %512, align 4
  %513 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %514 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %513, i32 0, i32 11
  %515 = load i32, i32* %514, align 4
  %516 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %517 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %516, i32 0, i32 10
  %518 = load i32, i32* %517, align 4
  %519 = add nsw i32 %518, 7
  %520 = sdiv i32 %519, 8
  %521 = mul nsw i32 %515, %520
  %522 = ashr i32 %521, 3
  store i32 %522, i32* %8, align 4
  %523 = load i32, i32* %8, align 4
  %524 = and i32 255, %523
  %525 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %526 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %525, i32 0, i32 23
  %527 = load i32*, i32** %526, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 19
  store i32 %524, i32* %528, align 4
  %529 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %530 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %529, i32 0, i32 28
  store i32 %524, i32* %530, align 8
  %531 = load i32, i32* %8, align 4
  %532 = and i32 768, %531
  %533 = ashr i32 %532, 4
  %534 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %535 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %534, i32 0, i32 29
  store i32 %533, i32* %535, align 4
  %536 = load i32, i32* %8, align 4
  %537 = ashr i32 %536, 8
  %538 = or i32 128, %537
  %539 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %540 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %539, i32 0, i32 30
  store i32 %538, i32* %540, align 8
  %541 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %542 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %541, i32 0, i32 31
  %543 = load i32, i32* %542, align 4
  %544 = or i32 %543, 12
  store i32 %544, i32* %542, align 4
  %545 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %546 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %545, i32 0, i32 10
  %547 = load i32, i32* %546, align 4
  %548 = icmp sle i32 %547, 8
  br i1 %548, label %549, label %552

549:                                              ; preds = %464
  %550 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %551 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %550, i32 0, i32 32
  store i32 0, i32* %551, align 8
  br label %564

552:                                              ; preds = %464
  %553 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %554 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %553, i32 0, i32 10
  %555 = load i32, i32* %554, align 4
  %556 = icmp sle i32 %555, 16
  br i1 %556, label %557, label %560

557:                                              ; preds = %552
  %558 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %559 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %558, i32 0, i32 32
  store i32 16, i32* %559, align 8
  br label %563

560:                                              ; preds = %552
  %561 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %562 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %561, i32 0, i32 32
  store i32 48, i32* %562, align 8
  br label %563

563:                                              ; preds = %560, %557
  br label %564

564:                                              ; preds = %563, %549
  %565 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %566 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %565, i32 0, i32 11
  %567 = load i32, i32* %566, align 4
  %568 = icmp sle i32 %567, 640
  br i1 %568, label %569, label %574

569:                                              ; preds = %564
  %570 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %571 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %570, i32 0, i32 32
  %572 = load i32, i32* %571, align 8
  %573 = or i32 %572, 64
  store i32 %573, i32* %571, align 8
  br label %633

574:                                              ; preds = %564
  %575 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %576 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %575, i32 0, i32 11
  %577 = load i32, i32* %576, align 4
  %578 = icmp eq i32 %577, 800
  br i1 %578, label %579, label %584

579:                                              ; preds = %574
  %580 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %581 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %580, i32 0, i32 32
  %582 = load i32, i32* %581, align 8
  %583 = or i32 %582, 128
  store i32 %583, i32* %581, align 8
  br label %632

584:                                              ; preds = %574
  %585 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %586 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %585, i32 0, i32 11
  %587 = load i32, i32* %586, align 4
  %588 = icmp eq i32 %587, 1024
  br i1 %588, label %589, label %593

589:                                              ; preds = %584
  %590 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %591 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %590, i32 0, i32 32
  %592 = load i32, i32* %591, align 8
  store i32 %592, i32* %591, align 8
  br label %631

593:                                              ; preds = %584
  %594 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %595 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %594, i32 0, i32 11
  %596 = load i32, i32* %595, align 4
  %597 = icmp eq i32 %596, 1152
  br i1 %597, label %598, label %603

598:                                              ; preds = %593
  %599 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %600 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %599, i32 0, i32 32
  %601 = load i32, i32* %600, align 8
  %602 = or i32 %601, 1
  store i32 %602, i32* %600, align 8
  br label %630

603:                                              ; preds = %593
  %604 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %605 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %604, i32 0, i32 11
  %606 = load i32, i32* %605, align 4
  %607 = icmp eq i32 %606, 1280
  br i1 %607, label %608, label %613

608:                                              ; preds = %603
  %609 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %610 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %609, i32 0, i32 32
  %611 = load i32, i32* %610, align 8
  %612 = or i32 %611, 192
  store i32 %612, i32* %610, align 8
  br label %629

613:                                              ; preds = %603
  %614 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %615 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %614, i32 0, i32 11
  %616 = load i32, i32* %615, align 4
  %617 = icmp eq i32 %616, 1600
  br i1 %617, label %618, label %623

618:                                              ; preds = %613
  %619 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %620 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %619, i32 0, i32 32
  %621 = load i32, i32* %620, align 8
  %622 = or i32 %621, 129
  store i32 %622, i32* %620, align 8
  br label %628

623:                                              ; preds = %613
  %624 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %625 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %624, i32 0, i32 32
  %626 = load i32, i32* %625, align 8
  %627 = or i32 %626, 193
  store i32 %627, i32* %625, align 8
  br label %628

628:                                              ; preds = %623, %618
  br label %629

629:                                              ; preds = %628, %608
  br label %630

630:                                              ; preds = %629, %598
  br label %631

631:                                              ; preds = %630, %589
  br label %632

632:                                              ; preds = %631, %579
  br label %633

633:                                              ; preds = %632, %569
  %634 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %635 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %634, i32 0, i32 2
  %636 = load i64, i64* %635, align 8
  %637 = load i64, i64* @S3_SAVAGE2000, align 8
  %638 = icmp eq i64 %636, %637
  br i1 %638, label %639, label %642

639:                                              ; preds = %633
  %640 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %641 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %640, i32 0, i32 33
  store i32 8, i32* %641, align 4
  br label %645

642:                                              ; preds = %633
  %643 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %644 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %643, i32 0, i32 33
  store i32 32, i32* %644, align 4
  br label %645

645:                                              ; preds = %642, %639
  %646 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %647 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %646, i32 0, i32 23
  %648 = load i32*, i32** %647, align 8
  %649 = getelementptr inbounds i32, i32* %648, i64 23
  store i32 235, i32* %649, align 4
  %650 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %651 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %650, i32 0, i32 0
  %652 = load i32, i32* %651, align 8
  %653 = or i32 %652, 1
  store i32 %653, i32* %651, align 8
  %654 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %655 = call i32 @vga_out8(i32 980, i32 54, %struct.savagefb_par* %654)
  %656 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %657 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %656)
  %658 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %659 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %658, i32 0, i32 34
  store i32 %657, i32* %659, align 8
  %660 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %661 = call i32 @vga_out8(i32 980, i32 104, %struct.savagefb_par* %660)
  %662 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %663 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %662)
  %664 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %665 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %664, i32 0, i32 35
  store i32 %663, i32* %665, align 4
  %666 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %667 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %666, i32 0, i32 40
  store i64 0, i64* %667, align 8
  %668 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %669 = call i32 @vga_out8(i32 980, i32 111, %struct.savagefb_par* %668)
  %670 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %671 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %670)
  %672 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %673 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %672, i32 0, i32 36
  store i32 %671, i32* %673, align 8
  %674 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %675 = call i32 @vga_out8(i32 980, i32 134, %struct.savagefb_par* %674)
  %676 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %677 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %676)
  %678 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %679 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %678, i32 0, i32 37
  store i32 %677, i32* %679, align 4
  %680 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %681 = call i32 @vga_out8(i32 980, i32 136, %struct.savagefb_par* %680)
  %682 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %683 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %682)
  %684 = or i32 %683, 8
  %685 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %686 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %685, i32 0, i32 38
  store i32 %684, i32* %686, align 8
  %687 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %688 = call i32 @vga_out8(i32 980, i32 176, %struct.savagefb_par* %687)
  %689 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %690 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %689)
  %691 = or i32 %690, 128
  %692 = load %struct.savage_reg*, %struct.savage_reg** %6, align 8
  %693 = getelementptr inbounds %struct.savage_reg, %struct.savage_reg* %692, i32 0, i32 39
  store i32 %691, i32* %693, align 4
  ret i32 0
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @memset(%struct.xtimings*, i32, i32) #1

declare dso_local i32 @vgaHWInit(%struct.fb_var_screeninfo*, %struct.savagefb_par*, %struct.xtimings*, %struct.savage_reg*) #1

declare dso_local i32 @S3_SAVAGE_MOBILE_SERIES(i64) #1

declare dso_local i32 @vga_out8(i32, i32, %struct.savagefb_par*) #1

declare dso_local i32 @vga_in8(i32, %struct.savagefb_par*) #1

declare dso_local i32 @SavageCalcClock(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @common_calc_clock(i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
