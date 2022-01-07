; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_set_capture_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_set_capture_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i64, %struct.TYPE_6__*, i64*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.v4l2_format = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.video_decoder_resolution = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GO7007_SENSOR_SCALING = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@GO7007_BUF_SIZE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@DECODER_SET_RESOLUTION = common dso_local global i32 0, align 4
@GO7007_FORMAT_MPEG1 = common dso_local global i32 0, align 4
@GO7007_FORMAT_MPEG2 = common dso_local global i32 0, align 4
@GO7007_FORMAT_MPEG4 = common dso_local global i32 0, align 4
@GO7007_RATIO_1_1 = common dso_local global i8* null, align 8
@GO7007_FORMAT_MJPEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, %struct.v4l2_format*, i32)* @set_capture_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_capture_size(%struct.go7007* %0, %struct.v4l2_format* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.go7007*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.video_decoder_resolution, align 4
  store %struct.go7007* %0, %struct.go7007** %5, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %18 = icmp ne %struct.v4l2_format* %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %3
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 130
  br i1 %25, label %26, label %43

26:                                               ; preds = %19
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 129
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 128
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %460

43:                                               ; preds = %33, %26, %19, %3
  %44 = load %struct.go7007*, %struct.go7007** %5, align 8
  %45 = getelementptr inbounds %struct.go7007, %struct.go7007* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %60 [
    i32 133, label %47
    i32 131, label %48
    i32 132, label %49
  ]

47:                                               ; preds = %43
  store i32 720, i32* %9, align 4
  store i32 480, i32* %8, align 4
  br label %60

48:                                               ; preds = %43
  store i32 720, i32* %9, align 4
  store i32 576, i32* %8, align 4
  br label %60

49:                                               ; preds = %43
  %50 = load %struct.go7007*, %struct.go7007** %5, align 8
  %51 = getelementptr inbounds %struct.go7007, %struct.go7007* %50, i32 0, i32 19
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  %55 = load %struct.go7007*, %struct.go7007** %5, align 8
  %56 = getelementptr inbounds %struct.go7007, %struct.go7007* %55, i32 0, i32 19
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %43, %49, %48, %47
  %61 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %62 = icmp eq %struct.v4l2_format* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %11, align 4
  br label %174

66:                                               ; preds = %60
  %67 = load %struct.go7007*, %struct.go7007** %5, align 8
  %68 = getelementptr inbounds %struct.go7007, %struct.go7007* %67, i32 0, i32 19
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @GO7007_SENSOR_SCALING, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %128

75:                                               ; preds = %66
  %76 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %77 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %10, align 4
  br label %101

85:                                               ; preds = %75
  %86 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %87 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %90, 144
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 144, i32* %10, align 4
  br label %100

93:                                               ; preds = %85
  %94 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %95 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, -16
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %93, %92
  br label %101

101:                                              ; preds = %100, %83
  %102 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %103 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %11, align 4
  br label %127

111:                                              ; preds = %101
  %112 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %113 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %116, 96
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  store i32 96, i32* %11, align 4
  br label %126

119:                                              ; preds = %111
  %120 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %121 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, -16
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %119, %118
  br label %127

127:                                              ; preds = %126, %109
  br label %173

128:                                              ; preds = %66
  %129 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %130 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %135 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = mul nsw i32 %133, %138
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %8, align 4
  %142 = mul nsw i32 %140, %141
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %13, align 4
  %144 = mul nsw i32 64, %143
  %145 = load i32, i32* %14, align 4
  %146 = mul nsw i32 9, %145
  %147 = icmp slt i32 %144, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %128
  %149 = load i32, i32* %9, align 4
  %150 = sdiv i32 %149, 4
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %8, align 4
  %152 = sdiv i32 %151, 4
  store i32 %152, i32* %11, align 4
  br label %168

153:                                              ; preds = %128
  %154 = load i32, i32* %13, align 4
  %155 = mul nsw i32 64, %154
  %156 = load i32, i32* %14, align 4
  %157 = mul nsw i32 36, %156
  %158 = icmp slt i32 %155, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = load i32, i32* %9, align 4
  %161 = sdiv i32 %160, 2
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %8, align 4
  %163 = sdiv i32 %162, 2
  store i32 %163, i32* %11, align 4
  br label %167

164:                                              ; preds = %153
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %11, align 4
  br label %167

167:                                              ; preds = %164, %159
  br label %168

168:                                              ; preds = %167, %148
  %169 = load i32, i32* %10, align 4
  %170 = and i32 %169, -16
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %11, align 4
  %172 = and i32 %171, -16
  store i32 %172, i32* %11, align 4
  br label %173

173:                                              ; preds = %168, %127
  br label %174

174:                                              ; preds = %173, %63
  %175 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %176 = icmp ne %struct.v4l2_format* %175, null
  br i1 %176, label %177, label %222

177:                                              ; preds = %174
  %178 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %179 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  store i32 %182, i32* %15, align 4
  %183 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %184 = call i32 @memset(%struct.v4l2_format* %183, i32 0, i32 48)
  %185 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %186 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %187 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* %10, align 4
  %189 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %190 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  store i32 %188, i32* %192, align 4
  %193 = load i32, i32* %11, align 4
  %194 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %195 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 2
  store i32 %193, i32* %197, align 8
  %198 = load i32, i32* %15, align 4
  %199 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %200 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  store i32 %198, i32* %202, align 8
  %203 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %204 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %205 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 6
  store i32 %203, i32* %207, align 8
  %208 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %209 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 5
  store i64 0, i64* %211, align 8
  %212 = load i32, i32* @GO7007_BUF_SIZE, align 4
  %213 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %214 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 4
  store i32 %212, i32* %216, align 8
  %217 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %218 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %219 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 3
  store i32 %217, i32* %221, align 4
  br label %222

222:                                              ; preds = %177, %174
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %222
  store i32 0, i32* %4, align 4
  br label %460

226:                                              ; preds = %222
  %227 = load i32, i32* %10, align 4
  %228 = load %struct.go7007*, %struct.go7007** %5, align 8
  %229 = getelementptr inbounds %struct.go7007, %struct.go7007* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* %11, align 4
  %231 = load %struct.go7007*, %struct.go7007** %5, align 8
  %232 = getelementptr inbounds %struct.go7007, %struct.go7007* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 8
  %233 = load %struct.go7007*, %struct.go7007** %5, align 8
  %234 = getelementptr inbounds %struct.go7007, %struct.go7007* %233, i32 0, i32 19
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.go7007*, %struct.go7007** %5, align 8
  %239 = getelementptr inbounds %struct.go7007, %struct.go7007* %238, i32 0, i32 23
  store i32 %237, i32* %239, align 4
  %240 = load %struct.go7007*, %struct.go7007** %5, align 8
  %241 = getelementptr inbounds %struct.go7007, %struct.go7007* %240, i32 0, i32 19
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.go7007*, %struct.go7007** %5, align 8
  %246 = getelementptr inbounds %struct.go7007, %struct.go7007* %245, i32 0, i32 22
  store i32 %244, i32* %246, align 8
  store i32 0, i32* %12, align 4
  br label %247

247:                                              ; preds = %258, %226
  %248 = load i32, i32* %12, align 4
  %249 = icmp slt i32 %248, 4
  br i1 %249, label %250, label %261

250:                                              ; preds = %247
  %251 = load %struct.go7007*, %struct.go7007** %5, align 8
  %252 = getelementptr inbounds %struct.go7007, %struct.go7007* %251, i32 0, i32 21
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %252, align 8
  %254 = load i32, i32* %12, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  store i64 0, i64* %257, align 8
  br label %258

258:                                              ; preds = %250
  %259 = load i32, i32* %12, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %12, align 4
  br label %247

261:                                              ; preds = %247
  store i32 0, i32* %12, align 4
  br label %262

262:                                              ; preds = %272, %261
  %263 = load i32, i32* %12, align 4
  %264 = icmp slt i32 %263, 1624
  br i1 %264, label %265, label %275

265:                                              ; preds = %262
  %266 = load %struct.go7007*, %struct.go7007** %5, align 8
  %267 = getelementptr inbounds %struct.go7007, %struct.go7007* %266, i32 0, i32 20
  %268 = load i64*, i64** %267, align 8
  %269 = load i32, i32* %12, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %268, i64 %270
  store i64 0, i64* %271, align 8
  br label %272

272:                                              ; preds = %265
  %273 = load i32, i32* %12, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %12, align 4
  br label %262

275:                                              ; preds = %262
  %276 = load %struct.go7007*, %struct.go7007** %5, align 8
  %277 = getelementptr inbounds %struct.go7007, %struct.go7007* %276, i32 0, i32 19
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @GO7007_SENSOR_SCALING, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %313

284:                                              ; preds = %275
  %285 = load i32, i32* %10, align 4
  %286 = getelementptr inbounds %struct.video_decoder_resolution, %struct.video_decoder_resolution* %16, i32 0, i32 0
  store i32 %285, i32* %286, align 4
  %287 = load i32, i32* %11, align 4
  %288 = load i32, i32* %8, align 4
  %289 = sdiv i32 %288, 2
  %290 = icmp sgt i32 %287, %289
  br i1 %290, label %291, label %297

291:                                              ; preds = %284
  %292 = load i32, i32* %11, align 4
  %293 = sdiv i32 %292, 2
  %294 = getelementptr inbounds %struct.video_decoder_resolution, %struct.video_decoder_resolution* %16, i32 0, i32 1
  store i32 %293, i32* %294, align 4
  %295 = load %struct.go7007*, %struct.go7007** %5, align 8
  %296 = getelementptr inbounds %struct.go7007, %struct.go7007* %295, i32 0, i32 3
  store i32 0, i32* %296, align 4
  br label %302

297:                                              ; preds = %284
  %298 = load i32, i32* %11, align 4
  %299 = getelementptr inbounds %struct.video_decoder_resolution, %struct.video_decoder_resolution* %16, i32 0, i32 1
  store i32 %298, i32* %299, align 4
  %300 = load %struct.go7007*, %struct.go7007** %5, align 8
  %301 = getelementptr inbounds %struct.go7007, %struct.go7007* %300, i32 0, i32 3
  store i32 1, i32* %301, align 4
  br label %302

302:                                              ; preds = %297, %291
  %303 = load %struct.go7007*, %struct.go7007** %5, align 8
  %304 = getelementptr inbounds %struct.go7007, %struct.go7007* %303, i32 0, i32 18
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %302
  %308 = load %struct.go7007*, %struct.go7007** %5, align 8
  %309 = getelementptr inbounds %struct.go7007, %struct.go7007* %308, i32 0, i32 17
  %310 = load i32, i32* @DECODER_SET_RESOLUTION, align 4
  %311 = call i32 @i2c_clients_command(i32* %309, i32 %310, %struct.video_decoder_resolution* %16)
  br label %312

312:                                              ; preds = %307, %302
  br label %346

313:                                              ; preds = %275
  %314 = load i32, i32* %10, align 4
  %315 = load i32, i32* %9, align 4
  %316 = sdiv i32 %315, 4
  %317 = icmp sle i32 %314, %316
  br i1 %317, label %318, label %325

318:                                              ; preds = %313
  %319 = load %struct.go7007*, %struct.go7007** %5, align 8
  %320 = getelementptr inbounds %struct.go7007, %struct.go7007* %319, i32 0, i32 4
  store i32 1, i32* %320, align 8
  %321 = load %struct.go7007*, %struct.go7007** %5, align 8
  %322 = getelementptr inbounds %struct.go7007, %struct.go7007* %321, i32 0, i32 3
  store i32 1, i32* %322, align 4
  %323 = load %struct.go7007*, %struct.go7007** %5, align 8
  %324 = getelementptr inbounds %struct.go7007, %struct.go7007* %323, i32 0, i32 5
  store i32 1, i32* %324, align 4
  br label %345

325:                                              ; preds = %313
  %326 = load i32, i32* %10, align 4
  %327 = load i32, i32* %9, align 4
  %328 = sdiv i32 %327, 2
  %329 = icmp sle i32 %326, %328
  br i1 %329, label %330, label %337

330:                                              ; preds = %325
  %331 = load %struct.go7007*, %struct.go7007** %5, align 8
  %332 = getelementptr inbounds %struct.go7007, %struct.go7007* %331, i32 0, i32 4
  store i32 1, i32* %332, align 8
  %333 = load %struct.go7007*, %struct.go7007** %5, align 8
  %334 = getelementptr inbounds %struct.go7007, %struct.go7007* %333, i32 0, i32 3
  store i32 1, i32* %334, align 4
  %335 = load %struct.go7007*, %struct.go7007** %5, align 8
  %336 = getelementptr inbounds %struct.go7007, %struct.go7007* %335, i32 0, i32 5
  store i32 0, i32* %336, align 4
  br label %344

337:                                              ; preds = %325
  %338 = load %struct.go7007*, %struct.go7007** %5, align 8
  %339 = getelementptr inbounds %struct.go7007, %struct.go7007* %338, i32 0, i32 4
  store i32 0, i32* %339, align 8
  %340 = load %struct.go7007*, %struct.go7007** %5, align 8
  %341 = getelementptr inbounds %struct.go7007, %struct.go7007* %340, i32 0, i32 3
  store i32 0, i32* %341, align 4
  %342 = load %struct.go7007*, %struct.go7007** %5, align 8
  %343 = getelementptr inbounds %struct.go7007, %struct.go7007* %342, i32 0, i32 5
  store i32 0, i32* %343, align 4
  br label %344

344:                                              ; preds = %337, %330
  br label %345

345:                                              ; preds = %344, %318
  br label %346

346:                                              ; preds = %345, %312
  %347 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %348 = icmp eq %struct.v4l2_format* %347, null
  br i1 %348, label %349, label %350

349:                                              ; preds = %346
  store i32 0, i32* %4, align 4
  br label %460

350:                                              ; preds = %346
  %351 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %352 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  switch i32 %355, label %459 [
    i32 129, label %356
    i32 128, label %402
    i32 130, label %436
  ]

356:                                              ; preds = %350
  %357 = load %struct.go7007*, %struct.go7007** %5, align 8
  %358 = getelementptr inbounds %struct.go7007, %struct.go7007* %357, i32 0, i32 16
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* @GO7007_FORMAT_MPEG1, align 4
  %361 = icmp eq i32 %359, %360
  br i1 %361, label %374, label %362

362:                                              ; preds = %356
  %363 = load %struct.go7007*, %struct.go7007** %5, align 8
  %364 = getelementptr inbounds %struct.go7007, %struct.go7007* %363, i32 0, i32 16
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @GO7007_FORMAT_MPEG2, align 4
  %367 = icmp eq i32 %365, %366
  br i1 %367, label %374, label %368

368:                                              ; preds = %362
  %369 = load %struct.go7007*, %struct.go7007** %5, align 8
  %370 = getelementptr inbounds %struct.go7007, %struct.go7007* %369, i32 0, i32 16
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @GO7007_FORMAT_MPEG4, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %374, label %375

374:                                              ; preds = %368, %362, %356
  br label %459

375:                                              ; preds = %368
  %376 = load i32, i32* @GO7007_FORMAT_MPEG1, align 4
  %377 = load %struct.go7007*, %struct.go7007** %5, align 8
  %378 = getelementptr inbounds %struct.go7007, %struct.go7007* %377, i32 0, i32 16
  store i32 %376, i32* %378, align 8
  %379 = load %struct.go7007*, %struct.go7007** %5, align 8
  %380 = getelementptr inbounds %struct.go7007, %struct.go7007* %379, i32 0, i32 6
  store i32 0, i32* %380, align 8
  %381 = load i8*, i8** @GO7007_RATIO_1_1, align 8
  %382 = load %struct.go7007*, %struct.go7007** %5, align 8
  %383 = getelementptr inbounds %struct.go7007, %struct.go7007* %382, i32 0, i32 15
  store i8* %381, i8** %383, align 8
  %384 = load %struct.go7007*, %struct.go7007** %5, align 8
  %385 = getelementptr inbounds %struct.go7007, %struct.go7007* %384, i32 0, i32 8
  %386 = load i32, i32* %385, align 8
  %387 = sdiv i32 %386, 1000
  %388 = load %struct.go7007*, %struct.go7007** %5, align 8
  %389 = getelementptr inbounds %struct.go7007, %struct.go7007* %388, i32 0, i32 7
  store i32 %387, i32* %389, align 4
  %390 = load %struct.go7007*, %struct.go7007** %5, align 8
  %391 = getelementptr inbounds %struct.go7007, %struct.go7007* %390, i32 0, i32 14
  store i32 0, i32* %391, align 8
  %392 = load %struct.go7007*, %struct.go7007** %5, align 8
  %393 = getelementptr inbounds %struct.go7007, %struct.go7007* %392, i32 0, i32 9
  store i32 1, i32* %393, align 4
  %394 = load %struct.go7007*, %struct.go7007** %5, align 8
  %395 = getelementptr inbounds %struct.go7007, %struct.go7007* %394, i32 0, i32 10
  store i32 1, i32* %395, align 8
  %396 = load %struct.go7007*, %struct.go7007** %5, align 8
  %397 = getelementptr inbounds %struct.go7007, %struct.go7007* %396, i32 0, i32 11
  store i32 1, i32* %397, align 4
  %398 = load %struct.go7007*, %struct.go7007** %5, align 8
  %399 = getelementptr inbounds %struct.go7007, %struct.go7007* %398, i32 0, i32 12
  store i32 1, i32* %399, align 8
  %400 = load %struct.go7007*, %struct.go7007** %5, align 8
  %401 = getelementptr inbounds %struct.go7007, %struct.go7007* %400, i32 0, i32 13
  store i32 0, i32* %401, align 4
  br label %459

402:                                              ; preds = %350
  %403 = load %struct.go7007*, %struct.go7007** %5, align 8
  %404 = getelementptr inbounds %struct.go7007, %struct.go7007* %403, i32 0, i32 16
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @GO7007_FORMAT_MPEG4, align 4
  %407 = icmp eq i32 %405, %406
  br i1 %407, label %408, label %409

408:                                              ; preds = %402
  br label %459

409:                                              ; preds = %402
  %410 = load i32, i32* @GO7007_FORMAT_MPEG4, align 4
  %411 = load %struct.go7007*, %struct.go7007** %5, align 8
  %412 = getelementptr inbounds %struct.go7007, %struct.go7007* %411, i32 0, i32 16
  store i32 %410, i32* %412, align 8
  %413 = load %struct.go7007*, %struct.go7007** %5, align 8
  %414 = getelementptr inbounds %struct.go7007, %struct.go7007* %413, i32 0, i32 6
  store i32 245, i32* %414, align 8
  %415 = load i8*, i8** @GO7007_RATIO_1_1, align 8
  %416 = load %struct.go7007*, %struct.go7007** %5, align 8
  %417 = getelementptr inbounds %struct.go7007, %struct.go7007* %416, i32 0, i32 15
  store i8* %415, i8** %417, align 8
  %418 = load %struct.go7007*, %struct.go7007** %5, align 8
  %419 = getelementptr inbounds %struct.go7007, %struct.go7007* %418, i32 0, i32 8
  %420 = load i32, i32* %419, align 8
  %421 = sdiv i32 %420, 1000
  %422 = load %struct.go7007*, %struct.go7007** %5, align 8
  %423 = getelementptr inbounds %struct.go7007, %struct.go7007* %422, i32 0, i32 7
  store i32 %421, i32* %423, align 4
  %424 = load %struct.go7007*, %struct.go7007** %5, align 8
  %425 = getelementptr inbounds %struct.go7007, %struct.go7007* %424, i32 0, i32 14
  store i32 0, i32* %425, align 8
  %426 = load %struct.go7007*, %struct.go7007** %5, align 8
  %427 = getelementptr inbounds %struct.go7007, %struct.go7007* %426, i32 0, i32 9
  store i32 1, i32* %427, align 4
  %428 = load %struct.go7007*, %struct.go7007** %5, align 8
  %429 = getelementptr inbounds %struct.go7007, %struct.go7007* %428, i32 0, i32 10
  store i32 1, i32* %429, align 8
  %430 = load %struct.go7007*, %struct.go7007** %5, align 8
  %431 = getelementptr inbounds %struct.go7007, %struct.go7007* %430, i32 0, i32 11
  store i32 1, i32* %431, align 4
  %432 = load %struct.go7007*, %struct.go7007** %5, align 8
  %433 = getelementptr inbounds %struct.go7007, %struct.go7007* %432, i32 0, i32 12
  store i32 1, i32* %433, align 8
  %434 = load %struct.go7007*, %struct.go7007** %5, align 8
  %435 = getelementptr inbounds %struct.go7007, %struct.go7007* %434, i32 0, i32 13
  store i32 0, i32* %435, align 4
  br label %459

436:                                              ; preds = %350
  %437 = load i32, i32* @GO7007_FORMAT_MJPEG, align 4
  %438 = load %struct.go7007*, %struct.go7007** %5, align 8
  %439 = getelementptr inbounds %struct.go7007, %struct.go7007* %438, i32 0, i32 16
  store i32 %437, i32* %439, align 8
  %440 = load %struct.go7007*, %struct.go7007** %5, align 8
  %441 = getelementptr inbounds %struct.go7007, %struct.go7007* %440, i32 0, i32 6
  store i32 0, i32* %441, align 8
  %442 = load i8*, i8** @GO7007_RATIO_1_1, align 8
  %443 = load %struct.go7007*, %struct.go7007** %5, align 8
  %444 = getelementptr inbounds %struct.go7007, %struct.go7007* %443, i32 0, i32 15
  store i8* %442, i8** %444, align 8
  %445 = load %struct.go7007*, %struct.go7007** %5, align 8
  %446 = getelementptr inbounds %struct.go7007, %struct.go7007* %445, i32 0, i32 7
  store i32 0, i32* %446, align 4
  %447 = load %struct.go7007*, %struct.go7007** %5, align 8
  %448 = getelementptr inbounds %struct.go7007, %struct.go7007* %447, i32 0, i32 14
  store i32 0, i32* %448, align 8
  %449 = load %struct.go7007*, %struct.go7007** %5, align 8
  %450 = getelementptr inbounds %struct.go7007, %struct.go7007* %449, i32 0, i32 9
  store i32 0, i32* %450, align 4
  %451 = load %struct.go7007*, %struct.go7007** %5, align 8
  %452 = getelementptr inbounds %struct.go7007, %struct.go7007* %451, i32 0, i32 10
  store i32 0, i32* %452, align 8
  %453 = load %struct.go7007*, %struct.go7007** %5, align 8
  %454 = getelementptr inbounds %struct.go7007, %struct.go7007* %453, i32 0, i32 11
  store i32 0, i32* %454, align 4
  %455 = load %struct.go7007*, %struct.go7007** %5, align 8
  %456 = getelementptr inbounds %struct.go7007, %struct.go7007* %455, i32 0, i32 12
  store i32 0, i32* %456, align 8
  %457 = load %struct.go7007*, %struct.go7007** %5, align 8
  %458 = getelementptr inbounds %struct.go7007, %struct.go7007* %457, i32 0, i32 13
  store i32 0, i32* %458, align 4
  br label %459

459:                                              ; preds = %350, %436, %409, %408, %375, %374
  store i32 0, i32* %4, align 4
  br label %460

460:                                              ; preds = %459, %349, %225, %40
  %461 = load i32, i32* %4, align 4
  ret i32 %461
}

declare dso_local i32 @memset(%struct.v4l2_format*, i32, i32) #1

declare dso_local i32 @i2c_clients_command(i32*, i32, %struct.video_decoder_resolution*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
