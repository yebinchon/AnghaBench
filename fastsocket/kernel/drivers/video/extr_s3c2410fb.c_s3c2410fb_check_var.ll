; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s3c2410fb.c_s3c2410fb_check_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s3c2410fb.c_s3c2410fb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i64, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.fb_info = type { %struct.s3c2410fb_info* }
%struct.s3c2410fb_info = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.s3c2410fb_mach_info* }
%struct.s3c2410fb_mach_info = type { i32, %struct.s3c2410fb_display*, i32 }
%struct.s3c2410fb_display = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"check_var(var=%p, info=%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"wrong resolution or depth %dx%d at %d bpp\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@S3C2410_LCDCON1_TFT = common dso_local global i32 0, align 4
@S3C2410_LCDCON5_FRM565 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @s3c2410fb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410fb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.s3c2410fb_info*, align 8
  %7 = alloca %struct.s3c2410fb_mach_info*, align 8
  %8 = alloca %struct.s3c2410fb_display*, align 8
  %9 = alloca %struct.s3c2410fb_display*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %13, align 8
  store %struct.s3c2410fb_info* %14, %struct.s3c2410fb_info** %6, align 8
  %15 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %16 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %18, align 8
  store %struct.s3c2410fb_mach_info* %19, %struct.s3c2410fb_mach_info** %7, align 8
  store %struct.s3c2410fb_display* null, %struct.s3c2410fb_display** %8, align 8
  %20 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %7, align 8
  %21 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %20, i32 0, i32 1
  %22 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %21, align 8
  %23 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %7, align 8
  %24 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %22, i64 %26
  store %struct.s3c2410fb_display* %27, %struct.s3c2410fb_display** %9, align 8
  %28 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %9, align 8
  %29 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %32 = ptrtoint %struct.fb_var_screeninfo* %31 to i64
  %33 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %34 = ptrtoint %struct.fb_info* %33 to i64
  %35 = call i32 (i8*, i64, i64, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %34)
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %9, align 8
  %40 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %2
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %9, align 8
  %48 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %43
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %9, align 8
  %56 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %9, align 8
  store %struct.s3c2410fb_display* %60, %struct.s3c2410fb_display** %8, align 8
  br label %130

61:                                               ; preds = %51, %43, %2
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %126, %61
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %7, align 8
  %65 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %68, label %129

68:                                               ; preds = %62
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %7, align 8
  %71 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %70, i32 0, i32 1
  %72 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %72, i64 %74
  %76 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %69, %77
  br i1 %78, label %79, label %125

79:                                               ; preds = %68
  %80 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %81 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %7, align 8
  %84 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %83, i32 0, i32 1
  %85 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %85, i64 %87
  %89 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %82, %90
  br i1 %91, label %92, label %125

92:                                               ; preds = %79
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %7, align 8
  %97 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %96, i32 0, i32 1
  %98 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %98, i64 %100
  %102 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %95, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %92
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %7, align 8
  %110 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %109, i32 0, i32 1
  %111 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %111, i64 %113
  %115 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %108, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %105
  %119 = load %struct.s3c2410fb_mach_info*, %struct.s3c2410fb_mach_info** %7, align 8
  %120 = getelementptr inbounds %struct.s3c2410fb_mach_info, %struct.s3c2410fb_mach_info* %119, i32 0, i32 1
  %121 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %121, i64 %123
  store %struct.s3c2410fb_display* %124, %struct.s3c2410fb_display** %8, align 8
  br label %129

125:                                              ; preds = %105, %92, %79, %68
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %11, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %62

129:                                              ; preds = %118, %62
  br label %130

130:                                              ; preds = %129, %59
  %131 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %132 = icmp ne %struct.s3c2410fb_display* %131, null
  br i1 %132, label %146, label %133

133:                                              ; preds = %130
  %134 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %135 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %138 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %141 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = call i32 (i8*, i64, i64, ...) @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %136, i64 %139, i64 %142)
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %376

146:                                              ; preds = %130
  %147 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %148 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %151 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %150, i32 0, i32 3
  store i64 %149, i64* %151, align 8
  %152 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %153 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %156 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %155, i32 0, i32 4
  store i64 %154, i64* %156, align 8
  %157 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %158 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %157, i32 0, i32 13
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %161 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %160, i32 0, i32 17
  store i32 %159, i32* %161, align 8
  %162 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %163 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %162, i32 0, i32 12
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %166 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %165, i32 0, i32 16
  store i32 %164, i32* %166, align 4
  %167 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %168 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %167, i32 0, i32 11
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %171 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %170, i32 0, i32 15
  store i32 %169, i32* %171, align 8
  %172 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %173 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %176 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %175, i32 0, i32 14
  store i32 %174, i32* %176, align 4
  %177 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %178 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %177, i32 0, i32 9
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %181 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %180, i32 0, i32 13
  store i32 %179, i32* %181, align 8
  %182 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %183 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %182, i32 0, i32 8
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %186 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %185, i32 0, i32 12
  store i32 %184, i32* %186, align 4
  %187 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %188 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %191 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %190, i32 0, i32 11
  store i32 %189, i32* %191, align 8
  %192 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %193 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %196 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %195, i32 0, i32 10
  store i32 %194, i32* %196, align 4
  %197 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %198 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %201 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %200, i32 0, i32 9
  store i32 %199, i32* %201, align 8
  %202 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %203 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %206 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  store i32 %204, i32* %207, align 8
  %208 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %209 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %6, align 8
  %212 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  store i32 %210, i32* %213, align 4
  %214 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %215 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %214, i32 0, i32 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  store i64 0, i64* %216, align 8
  %217 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %218 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %217, i32 0, i32 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  store i64 0, i64* %219, align 8
  %220 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %221 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  switch i64 %222, label %309 [
    i64 1, label %223
    i64 2, label %223
    i64 4, label %223
    i64 8, label %245
    i64 12, label %290
    i64 16, label %310
    i64 32, label %356
  ]

223:                                              ; preds = %146, %146, %146
  %224 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %225 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %224, i32 0, i32 7
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  store i32 0, i32* %226, align 8
  %227 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %228 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %231 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %230, i32 0, i32 7
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 1
  store i64 %229, i64* %232, align 8
  %233 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %234 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %233, i32 0, i32 6
  %235 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %236 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %235, i32 0, i32 7
  %237 = bitcast %struct.TYPE_8__* %234 to i8*
  %238 = bitcast %struct.TYPE_8__* %236 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %237, i8* align 8 %238, i64 16, i1 false)
  %239 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %240 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %239, i32 0, i32 5
  %241 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %242 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %241, i32 0, i32 7
  %243 = bitcast %struct.TYPE_8__* %240 to i8*
  %244 = bitcast %struct.TYPE_8__* %242 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %243, i8* align 8 %244, i64 16, i1 false)
  br label %375

245:                                              ; preds = %146
  %246 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %247 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @S3C2410_LCDCON1_TFT, align 4
  %250 = icmp ne i32 %248, %249
  br i1 %250, label %251, label %270

251:                                              ; preds = %245
  %252 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %253 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %252, i32 0, i32 7
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 1
  store i64 3, i64* %254, align 8
  %255 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %256 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %255, i32 0, i32 7
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 0
  store i32 5, i32* %257, align 8
  %258 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %259 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %258, i32 0, i32 6
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 1
  store i64 3, i64* %260, align 8
  %261 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %262 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %261, i32 0, i32 6
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  store i32 2, i32* %263, align 8
  %264 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %265 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %264, i32 0, i32 5
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 1
  store i64 2, i64* %266, align 8
  %267 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %268 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %267, i32 0, i32 5
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  store i32 0, i32* %269, align 8
  br label %289

270:                                              ; preds = %245
  %271 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %272 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %271, i32 0, i32 7
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  store i32 0, i32* %273, align 8
  %274 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %275 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %274, i32 0, i32 7
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 1
  store i64 8, i64* %276, align 8
  %277 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %278 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %277, i32 0, i32 6
  %279 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %280 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %279, i32 0, i32 7
  %281 = bitcast %struct.TYPE_8__* %278 to i8*
  %282 = bitcast %struct.TYPE_8__* %280 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %281, i8* align 8 %282, i64 16, i1 false)
  %283 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %284 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %283, i32 0, i32 5
  %285 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %286 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %285, i32 0, i32 7
  %287 = bitcast %struct.TYPE_8__* %284 to i8*
  %288 = bitcast %struct.TYPE_8__* %286 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %287, i8* align 8 %288, i64 16, i1 false)
  br label %289

289:                                              ; preds = %270, %251
  br label %375

290:                                              ; preds = %146
  %291 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %292 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %291, i32 0, i32 7
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 1
  store i64 4, i64* %293, align 8
  %294 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %295 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %294, i32 0, i32 7
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 0
  store i32 8, i32* %296, align 8
  %297 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %298 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %297, i32 0, i32 6
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 1
  store i64 4, i64* %299, align 8
  %300 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %301 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %300, i32 0, i32 6
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 0
  store i32 4, i32* %302, align 8
  %303 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %304 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %303, i32 0, i32 5
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 1
  store i64 4, i64* %305, align 8
  %306 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %307 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %306, i32 0, i32 5
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 0
  store i32 0, i32* %308, align 8
  br label %375

309:                                              ; preds = %146
  br label %310

310:                                              ; preds = %146, %309
  %311 = load %struct.s3c2410fb_display*, %struct.s3c2410fb_display** %8, align 8
  %312 = getelementptr inbounds %struct.s3c2410fb_display, %struct.s3c2410fb_display* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @S3C2410_LCDCON5_FRM565, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %336

317:                                              ; preds = %310
  %318 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %319 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %318, i32 0, i32 7
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 0
  store i32 11, i32* %320, align 8
  %321 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %322 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %321, i32 0, i32 6
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 0
  store i32 5, i32* %323, align 8
  %324 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %325 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %324, i32 0, i32 5
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 0
  store i32 0, i32* %326, align 8
  %327 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %328 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %327, i32 0, i32 7
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 1
  store i64 5, i64* %329, align 8
  %330 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %331 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %330, i32 0, i32 6
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 1
  store i64 6, i64* %332, align 8
  %333 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %334 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %333, i32 0, i32 5
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 1
  store i64 5, i64* %335, align 8
  br label %355

336:                                              ; preds = %310
  %337 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %338 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %337, i32 0, i32 7
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 0
  store i32 11, i32* %339, align 8
  %340 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %341 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %340, i32 0, i32 6
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 0
  store i32 6, i32* %342, align 8
  %343 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %344 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %343, i32 0, i32 5
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 0
  store i32 1, i32* %345, align 8
  %346 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %347 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %346, i32 0, i32 7
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 1
  store i64 5, i64* %348, align 8
  %349 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %350 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %349, i32 0, i32 6
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 1
  store i64 5, i64* %351, align 8
  %352 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %353 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %352, i32 0, i32 5
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 1
  store i64 5, i64* %354, align 8
  br label %355

355:                                              ; preds = %336, %317
  br label %375

356:                                              ; preds = %146
  %357 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %358 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %357, i32 0, i32 7
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i32 0, i32 1
  store i64 8, i64* %359, align 8
  %360 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %361 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %360, i32 0, i32 7
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 0
  store i32 16, i32* %362, align 8
  %363 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %364 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %363, i32 0, i32 6
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 1
  store i64 8, i64* %365, align 8
  %366 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %367 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %366, i32 0, i32 6
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 0
  store i32 8, i32* %368, align 8
  %369 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %370 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %369, i32 0, i32 5
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 1
  store i64 8, i64* %371, align 8
  %372 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %373 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %372, i32 0, i32 5
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 0
  store i32 0, i32* %374, align 8
  br label %375

375:                                              ; preds = %356, %355, %290, %289, %223
  store i32 0, i32* %3, align 4
  br label %376

376:                                              ; preds = %375, %133
  %377 = load i32, i32* %3, align 4
  ret i32 %377
}

declare dso_local i32 @dprintk(i8*, i64, i64, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
