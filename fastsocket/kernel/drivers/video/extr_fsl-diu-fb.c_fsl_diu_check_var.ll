; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fsl-diu-fb.c_fsl_diu_check_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fsl-diu-fb.c_fsl_diu_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"check_var xres: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"check_var yres: %d\0A\00", align 1
@default_bpp = common dso_local global i32 0, align 4
@MIN_PIX_CLK = common dso_local global i64 0, align 8
@MAX_PIX_CLK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"pixclock set for 60Hz refresh = %u ps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @fsl_diu_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_diu_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %13)
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %36, %28
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %57 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %56, i32 0, i32 5
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %60 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %61, %65
  %67 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %66, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %58
  %73 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %76, %80
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 4
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %72, %58
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %89 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %87, %91
  %93 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %94 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %92, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %84
  %99 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %100 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %102, %106
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %109 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %108, i32 0, i32 5
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %98, %84
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 32
  br i1 %114, label %115, label %129

115:                                              ; preds = %110
  %116 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %117 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 24
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %122 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 16
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32, i32* @default_bpp, align 4
  %127 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %128 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %125, %120, %115, %110
  %130 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %131 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  switch i32 %132, label %244 [
    i32 16, label %133
    i32 24, label %170
    i32 32, label %207
  ]

133:                                              ; preds = %129
  %134 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %135 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %134, i32 0, i32 22
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  store i32 5, i32* %136, align 4
  %137 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %138 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %137, i32 0, i32 22
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  store i32 11, i32* %139, align 4
  %140 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %141 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %140, i32 0, i32 22
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  store i32 0, i32* %142, align 4
  %143 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %144 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %143, i32 0, i32 21
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  store i32 6, i32* %145, align 8
  %146 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %147 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %146, i32 0, i32 21
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  store i32 5, i32* %148, align 4
  %149 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %150 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %149, i32 0, i32 21
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  store i32 0, i32* %151, align 8
  %152 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %153 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %152, i32 0, i32 20
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  store i32 5, i32* %154, align 4
  %155 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %156 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %155, i32 0, i32 20
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  store i32 0, i32* %157, align 4
  %158 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %159 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %158, i32 0, i32 20
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  store i32 0, i32* %160, align 4
  %161 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %162 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %161, i32 0, i32 19
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  store i32 0, i32* %163, align 8
  %164 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %165 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %164, i32 0, i32 19
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  store i32 0, i32* %166, align 4
  %167 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %168 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %167, i32 0, i32 19
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 2
  store i32 0, i32* %169, align 8
  br label %244

170:                                              ; preds = %129
  %171 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %172 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %171, i32 0, i32 22
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  store i32 8, i32* %173, align 4
  %174 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %175 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %174, i32 0, i32 22
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  store i32 0, i32* %176, align 4
  %177 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %178 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %177, i32 0, i32 22
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 2
  store i32 0, i32* %179, align 4
  %180 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %181 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %180, i32 0, i32 21
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  store i32 8, i32* %182, align 8
  %183 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %184 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %183, i32 0, i32 21
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  store i32 8, i32* %185, align 4
  %186 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %187 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %186, i32 0, i32 21
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 2
  store i32 0, i32* %188, align 8
  %189 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %190 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %189, i32 0, i32 20
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  store i32 8, i32* %191, align 4
  %192 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %193 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %192, i32 0, i32 20
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  store i32 16, i32* %194, align 4
  %195 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %196 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %195, i32 0, i32 20
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 2
  store i32 0, i32* %197, align 4
  %198 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %199 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %198, i32 0, i32 19
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  store i32 0, i32* %200, align 8
  %201 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %202 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %201, i32 0, i32 19
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  store i32 0, i32* %203, align 4
  %204 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %205 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %204, i32 0, i32 19
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 2
  store i32 0, i32* %206, align 8
  br label %244

207:                                              ; preds = %129
  %208 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %209 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %208, i32 0, i32 22
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  store i32 8, i32* %210, align 4
  %211 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %212 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %211, i32 0, i32 22
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  store i32 16, i32* %213, align 4
  %214 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %215 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %214, i32 0, i32 22
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 2
  store i32 0, i32* %216, align 4
  %217 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %218 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %217, i32 0, i32 21
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  store i32 8, i32* %219, align 8
  %220 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %221 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %220, i32 0, i32 21
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  store i32 8, i32* %222, align 4
  %223 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %224 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %223, i32 0, i32 21
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 2
  store i32 0, i32* %225, align 8
  %226 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %227 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %226, i32 0, i32 20
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  store i32 8, i32* %228, align 4
  %229 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %230 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %229, i32 0, i32 20
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 1
  store i32 0, i32* %231, align 4
  %232 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %233 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %232, i32 0, i32 20
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 2
  store i32 0, i32* %234, align 4
  %235 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %236 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %235, i32 0, i32 19
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  store i32 8, i32* %237, align 8
  %238 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %239 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %238, i32 0, i32 19
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 1
  store i32 24, i32* %240, align 4
  %241 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %242 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %241, i32 0, i32 19
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 2
  store i32 0, i32* %243, align 8
  br label %244

244:                                              ; preds = %129, %207, %170, %133
  %245 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %246 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %245, i32 0, i32 7
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @MIN_PIX_CLK, align 8
  %249 = icmp ult i64 %247, %248
  br i1 %249, label %256, label %250

250:                                              ; preds = %244
  %251 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %252 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %251, i32 0, i32 7
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @MAX_PIX_CLK, align 8
  %255 = icmp ugt i64 %253, %254
  br i1 %255, label %256, label %304

256:                                              ; preds = %250, %244
  %257 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %258 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %261 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %260, i32 0, i32 8
  %262 = load i64, i64* %261, align 8
  %263 = add i64 %259, %262
  %264 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %265 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %264, i32 0, i32 9
  %266 = load i64, i64* %265, align 8
  %267 = add i64 %263, %266
  %268 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %269 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %268, i32 0, i32 10
  %270 = load i64, i64* %269, align 8
  %271 = add i64 %267, %270
  store i64 %271, i64* %5, align 8
  %272 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %273 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %276 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %275, i32 0, i32 11
  %277 = load i64, i64* %276, align 8
  %278 = add i64 %274, %277
  %279 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %280 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %279, i32 0, i32 12
  %281 = load i64, i64* %280, align 8
  %282 = add i64 %278, %281
  %283 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %284 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %283, i32 0, i32 13
  %285 = load i64, i64* %284, align 8
  %286 = add i64 %282, %285
  store i64 %286, i64* %6, align 8
  %287 = load i64, i64* %6, align 8
  %288 = load i64, i64* %5, align 8
  %289 = mul i64 %287, %288
  %290 = mul i64 %289, 6
  %291 = udiv i64 %290, 100
  %292 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %293 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %292, i32 0, i32 7
  store i64 %291, i64* %293, align 8
  %294 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %295 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %294, i32 0, i32 7
  %296 = load i64, i64* %295, align 8
  %297 = call i64 @KHZ2PICOS(i64 %296)
  %298 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %299 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %298, i32 0, i32 7
  store i64 %297, i64* %299, align 8
  %300 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %301 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %300, i32 0, i32 7
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %302)
  br label %304

304:                                              ; preds = %256, %250
  %305 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %306 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %305, i32 0, i32 14
  store i32 -1, i32* %306, align 8
  %307 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %308 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %307, i32 0, i32 15
  store i32 -1, i32* %308, align 4
  %309 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %310 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %309, i32 0, i32 18
  store i64 0, i64* %310, align 8
  %311 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %312 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %311, i32 0, i32 17
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %315 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %314, i32 0, i32 16
  %316 = load i32, i32* %315, align 8
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 8
  %318 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %319 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %318, i32 0, i32 16
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %322 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %321, i32 0, i32 17
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 4
  %325 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %326 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %327 = call i32 @adjust_aoi_size_position(%struct.fb_var_screeninfo* %325, %struct.fb_info* %326)
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i64 @KHZ2PICOS(i64) #1

declare dso_local i32 @adjust_aoi_size_position(%struct.fb_var_screeninfo*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
