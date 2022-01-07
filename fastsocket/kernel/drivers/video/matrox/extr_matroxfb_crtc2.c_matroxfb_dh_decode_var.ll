; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_crtc2.c_matroxfb_dh_decode_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_crtc2.c_matroxfb_dh_decode_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matroxfb_dh_fb_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.matroxfb_dh_fb_info*, %struct.fb_var_screeninfo*, i32*, i32*, i32*)* @matroxfb_dh_decode_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matroxfb_dh_decode_var(%struct.matroxfb_dh_fb_info* %0, %struct.fb_var_screeninfo* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.matroxfb_dh_fb_info*, align 8
  %8 = alloca %struct.fb_var_screeninfo*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.matroxfb_dh_fb_info* %0, %struct.matroxfb_dh_fb_info** %7, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %20 [
    i32 16, label %18
    i32 32, label %19
  ]

18:                                               ; preds = %5
  store i32 31, i32* %12, align 4
  br label %23

19:                                               ; preds = %5
  store i32 15, i32* %12, align 4
  br label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %248

23:                                               ; preds = %19, %18
  %24 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %7, align 8
  %25 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %23
  %42 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %41
  %56 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %57 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = add i32 %58, %59
  %61 = load i32, i32* %12, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 32767
  br i1 %69, label %70, label %73

70:                                               ; preds = %55
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %248

73:                                               ; preds = %55
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %76, %79
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %83, 3
  %85 = mul nsw i32 %80, %84
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ugt i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %73
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %248

92:                                               ; preds = %73
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %95, %98
  %100 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %101 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %99, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %92
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %106 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %109 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %107, %110
  %112 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %113 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %104, %92
  %115 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %116 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %119 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %117, %120
  %122 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %123 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %121, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %114
  %127 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %128 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %131 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %129, %132
  %134 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %135 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %134, i32 0, i32 6
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %126, %114
  %137 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %138 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, -8
  store i32 %140, i32* %138, align 8
  %141 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %142 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, -8
  store i32 %144, i32* %142, align 4
  %145 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %146 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, -8
  store i32 %148, i32* %146, align 8
  %149 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %150 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %149, i32 0, i32 9
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, -8
  store i32 %152, i32* %150, align 4
  %153 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %154 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32*, i32** %11, align 8
  store i32 %155, i32* %156, align 4
  %157 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %158 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %159, 16
  br i1 %160, label %161, label %219

161:                                              ; preds = %136
  %162 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %163 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %162, i32 0, i32 12
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 5
  br i1 %166, label %167, label %193

167:                                              ; preds = %161
  %168 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %169 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %168, i32 0, i32 13
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  store i32 10, i32* %170, align 8
  %171 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %172 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %171, i32 0, i32 13
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  store i32 5, i32* %173, align 4
  %174 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %175 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %174, i32 0, i32 12
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  store i32 5, i32* %176, align 4
  %177 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %178 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %177, i32 0, i32 12
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  store i32 5, i32* %179, align 8
  %180 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %181 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %180, i32 0, i32 11
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  store i64 0, i64* %182, align 8
  %183 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %184 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %183, i32 0, i32 11
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  store i32 5, i32* %185, align 8
  %186 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %187 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %186, i32 0, i32 10
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  store i32 15, i32* %188, align 8
  %189 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %190 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %189, i32 0, i32 10
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  store i32 1, i32* %191, align 4
  %192 = load i32*, i32** %11, align 8
  store i32 15, i32* %192, align 4
  br label %218

193:                                              ; preds = %161
  %194 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %195 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %194, i32 0, i32 13
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  store i32 11, i32* %196, align 8
  %197 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %198 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %197, i32 0, i32 13
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  store i32 5, i32* %199, align 4
  %200 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %201 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %200, i32 0, i32 12
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  store i32 5, i32* %202, align 4
  %203 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %204 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %203, i32 0, i32 12
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  store i32 6, i32* %205, align 8
  %206 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %207 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %206, i32 0, i32 11
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 1
  store i64 0, i64* %208, align 8
  %209 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %210 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %209, i32 0, i32 11
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  store i32 5, i32* %211, align 8
  %212 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %213 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %212, i32 0, i32 10
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  store i32 0, i32* %214, align 8
  %215 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %216 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %215, i32 0, i32 10
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  store i32 0, i32* %217, align 4
  br label %218

218:                                              ; preds = %193, %167
  br label %244

219:                                              ; preds = %136
  %220 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %221 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %220, i32 0, i32 13
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  store i32 16, i32* %222, align 8
  %223 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %224 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %223, i32 0, i32 13
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 1
  store i32 8, i32* %225, align 4
  %226 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %227 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %226, i32 0, i32 12
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  store i32 8, i32* %228, align 4
  %229 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %230 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %229, i32 0, i32 12
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  store i32 8, i32* %231, align 8
  %232 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %233 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %232, i32 0, i32 11
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 1
  store i64 0, i64* %234, align 8
  %235 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %236 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %235, i32 0, i32 11
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  store i32 8, i32* %237, align 8
  %238 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %239 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %238, i32 0, i32 10
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  store i32 24, i32* %240, align 8
  %241 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %8, align 8
  %242 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %241, i32 0, i32 10
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 1
  store i32 8, i32* %243, align 4
  br label %244

244:                                              ; preds = %219, %218
  %245 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %246 = load i32*, i32** %9, align 8
  store i32 %245, i32* %246, align 4
  %247 = load i32*, i32** %10, align 8
  store i32 16, i32* %247, align 4
  store i32 0, i32* %6, align 4
  br label %248

248:                                              ; preds = %244, %89, %70, %20
  %249 = load i32, i32* %6, align 4
  ret i32 %249
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
