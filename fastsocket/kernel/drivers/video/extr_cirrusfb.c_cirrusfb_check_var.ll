; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cirrusfb.c_cirrusfb_check_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cirrusfb.c_cirrusfb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i64, i64, i32, i64, i64, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.fb_info = type { i32, i32, %struct.cirrusfb_info* }
%struct.cirrusfb_info = type { i32 }

@isPReP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported bpp size: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"virtual resolution set to maximum of %dx%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"mode %dx%dx%d rejected... virtual resolution too high to fit into video memory!\0A\00", align 1
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"ERROR: VerticalTotal >= 1280; special treatment required! (TODO)\0A\00", align 1
@FB_ACCELF_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @cirrusfb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cirrusfb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cirrusfb_info*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 %11, 8
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sdiv i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 2
  %19 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %18, align 8
  store %struct.cirrusfb_info* %19, %struct.cirrusfb_info** %8, align 8
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %127 [
    i32 1, label %23
    i32 8, label %42
    i32 16, label %61
    i32 24, label %94
  ]

23:                                               ; preds = %2
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 12
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 12
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 11
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 12
  %34 = bitcast %struct.TYPE_3__* %31 to i8*
  %35 = bitcast %struct.TYPE_3__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 16, i1 false)
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 10
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 12
  %40 = bitcast %struct.TYPE_3__* %37 to i8*
  %41 = bitcast %struct.TYPE_3__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 16, i1 false)
  br label %137

42:                                               ; preds = %2
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 12
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 12
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 8, i32* %48, align 4
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 11
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 12
  %53 = bitcast %struct.TYPE_3__* %50 to i8*
  %54 = bitcast %struct.TYPE_3__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 16, i1 false)
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 10
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 12
  %59 = bitcast %struct.TYPE_3__* %56 to i8*
  %60 = bitcast %struct.TYPE_3__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  br label %137

61:                                               ; preds = %2
  %62 = load i32, i32* @isPReP, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 12
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 2, i32* %67, align 8
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %68, i32 0, i32 11
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 -3, i32* %70, align 8
  %71 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %71, i32 0, i32 10
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 8, i32* %73, align 8
  br label %84

74:                                               ; preds = %61
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 12
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 11, i32* %77, align 8
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 5, i32* %80, align 8
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 10
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %74, %64
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 12
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i32 5, i32* %87, align 4
  %88 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %88, i32 0, i32 11
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i32 6, i32* %90, align 4
  %91 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %92 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %91, i32 0, i32 10
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i32 5, i32* %93, align 4
  br label %137

94:                                               ; preds = %2
  %95 = load i32, i32* @isPReP, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 12
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %101, i32 0, i32 11
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i32 8, i32* %103, align 8
  %104 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %105 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %104, i32 0, i32 10
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store i32 16, i32* %106, align 8
  br label %117

107:                                              ; preds = %94
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %109 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %108, i32 0, i32 12
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i32 16, i32* %110, align 8
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 11
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i32 8, i32* %113, align 8
  %114 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %115 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %114, i32 0, i32 10
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  br label %117

117:                                              ; preds = %107, %97
  %118 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %119 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %118, i32 0, i32 12
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  store i32 8, i32* %120, align 4
  %121 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %122 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %121, i32 0, i32 11
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  store i32 8, i32* %123, align 4
  %124 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %125 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %124, i32 0, i32 10
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store i32 8, i32* %126, align 4
  br label %137

127:                                              ; preds = %2
  %128 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %129 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %132 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @dev_dbg(i32 %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %356

137:                                              ; preds = %117, %84, %42, %23
  %138 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %139 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %142 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp slt i64 %140, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %137
  %146 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %147 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %150 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %145, %137
  %152 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %153 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %156, label %177

156:                                              ; preds = %151
  %157 = load i32, i32* %7, align 4
  %158 = zext i32 %157 to i64
  %159 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %160 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = sdiv i64 %158, %161
  %163 = trunc i64 %162 to i32
  %164 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %165 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 8
  %166 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %167 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %170 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %174 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @dev_info(i32 %168, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %172, i32 %175)
  br label %177

177:                                              ; preds = %156, %151
  %178 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %179 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %183 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = icmp slt i64 %181, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %177
  %187 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %188 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  %191 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %192 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %186, %177
  %194 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %195 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %198 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = mul nsw i64 %196, %200
  %202 = load i32, i32* %7, align 4
  %203 = zext i32 %202 to i64
  %204 = icmp sgt i64 %201, %203
  br i1 %204, label %205, label %221

205:                                              ; preds = %193
  %206 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %207 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %210 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %213 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %216 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (i32, i8*, ...) @dev_err(i32 %208, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i64 %211, i32 %214, i32 %217)
  %219 = load i32, i32* @EINVAL, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %3, align 4
  br label %356

221:                                              ; preds = %193
  %222 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %223 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %222, i32 0, i32 5
  %224 = load i64, i64* %223, align 8
  %225 = icmp slt i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %228 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %227, i32 0, i32 5
  store i64 0, i64* %228, align 8
  br label %229

229:                                              ; preds = %226, %221
  %230 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %231 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %230, i32 0, i32 6
  %232 = load i64, i64* %231, align 8
  %233 = icmp slt i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %236 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %235, i32 0, i32 6
  store i64 0, i64* %236, align 8
  br label %237

237:                                              ; preds = %234, %229
  %238 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %239 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %238, i32 0, i32 5
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %242 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %245 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = sub nsw i64 %243, %246
  %248 = icmp sgt i64 %240, %247
  br i1 %248, label %249, label %260

249:                                              ; preds = %237
  %250 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %251 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %254 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = sub nsw i64 %252, %255
  %257 = sub nsw i64 %256, 1
  %258 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %259 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %258, i32 0, i32 5
  store i64 %257, i64* %259, align 8
  br label %260

260:                                              ; preds = %249, %237
  %261 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %262 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %261, i32 0, i32 6
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %265 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 8
  %267 = sext i32 %266 to i64
  %268 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %269 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %268, i32 0, i32 4
  %270 = load i64, i64* %269, align 8
  %271 = sub nsw i64 %267, %270
  %272 = icmp sgt i64 %263, %271
  br i1 %272, label %273, label %285

273:                                              ; preds = %260
  %274 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %275 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = sext i32 %276 to i64
  %278 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %279 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = sub nsw i64 %277, %280
  %282 = sub nsw i64 %281, 1
  %283 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %284 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %283, i32 0, i32 6
  store i64 %282, i64* %284, align 8
  br label %285

285:                                              ; preds = %273, %260
  %286 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %287 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %286, i32 0, i32 9
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  store i64 0, i64* %288, align 8
  %289 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %290 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %289, i32 0, i32 9
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 1
  store i64 0, i64* %291, align 8
  %292 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %293 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %292, i32 0, i32 9
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 2
  store i64 0, i64* %294, align 8
  %295 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %296 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %295, i32 0, i32 10
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 2
  store i64 0, i64* %297, align 8
  %298 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %299 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %298, i32 0, i32 11
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 2
  store i64 0, i64* %300, align 8
  %301 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %302 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %301, i32 0, i32 12
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 2
  store i64 0, i64* %303, align 8
  %304 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %305 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %304, i32 0, i32 4
  %306 = load i64, i64* %305, align 8
  %307 = trunc i64 %306 to i32
  store i32 %307, i32* %6, align 4
  %308 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %309 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %308, i32 0, i32 7
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %285
  %315 = load i32, i32* %6, align 4
  %316 = mul nsw i32 %315, 2
  store i32 %316, i32* %6, align 4
  br label %329

317:                                              ; preds = %285
  %318 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %319 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %318, i32 0, i32 7
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %317
  %325 = load i32, i32* %6, align 4
  %326 = add nsw i32 %325, 1
  %327 = sdiv i32 %326, 2
  store i32 %327, i32* %6, align 4
  br label %328

328:                                              ; preds = %324, %317
  br label %329

329:                                              ; preds = %328, %314
  %330 = load i32, i32* %6, align 4
  %331 = icmp sge i32 %330, 1280
  br i1 %331, label %332, label %339

332:                                              ; preds = %329
  %333 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %334 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = call i32 (i32, i8*, ...) @dev_err(i32 %335, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  %337 = load i32, i32* @EINVAL, align 4
  %338 = sub nsw i32 0, %337
  store i32 %338, i32* %3, align 4
  br label %356

339:                                              ; preds = %329
  %340 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %341 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %342 = call i64 @cirrusfb_check_pixclock(%struct.fb_var_screeninfo* %340, %struct.fb_info* %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %339
  %345 = load i32, i32* @EINVAL, align 4
  %346 = sub nsw i32 0, %345
  store i32 %346, i32* %3, align 4
  br label %356

347:                                              ; preds = %339
  %348 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %8, align 8
  %349 = call i32 @is_laguna(%struct.cirrusfb_info* %348)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %355, label %351

351:                                              ; preds = %347
  %352 = load i32, i32* @FB_ACCELF_TEXT, align 4
  %353 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %354 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %353, i32 0, i32 8
  store i32 %352, i32* %354, align 4
  br label %355

355:                                              ; preds = %351, %347
  store i32 0, i32* %3, align 4
  br label %356

356:                                              ; preds = %355, %344, %332, %205, %127
  %357 = load i32, i32* %3, align 4
  ret i32 %357
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #2

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #2

declare dso_local i32 @dev_err(i32, i8*, ...) #2

declare dso_local i64 @cirrusfb_check_pixclock(%struct.fb_var_screeninfo*, %struct.fb_info*) #2

declare dso_local i32 @is_laguna(%struct.cirrusfb_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
