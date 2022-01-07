; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_detect_usb_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_detect_usb_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ua101 = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_12__*, %struct.TYPE_13__**, %struct.TYPE_8__, i32 }
%struct.TYPE_11__ = type { i32, i32, i8*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i8*, i32 }
%struct.uac_format_type_i_discrete_descriptor = type { i32, i32, i32, i32* }

@INTF_CAPTURE = common dso_local global i64 0, align 8
@INTF_PLAYBACK = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S24_3LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S32_LE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"sample width is not 24 or 32 bits\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"playback/capture sample widths do not match\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"sample width is not 24 bits\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"playback/capture rates do not match: %u/%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"unknown device speed\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"invalid capture endpoint\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"invalid playback endpoint\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ua101*)* @detect_usb_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_usb_format(%struct.ua101* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ua101*, align 8
  %4 = alloca %struct.uac_format_type_i_discrete_descriptor*, align 8
  %5 = alloca %struct.uac_format_type_i_discrete_descriptor*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca i32, align 4
  store %struct.ua101* %0, %struct.ua101** %3, align 8
  %8 = load %struct.ua101*, %struct.ua101** %3, align 8
  %9 = getelementptr inbounds %struct.ua101, %struct.ua101* %8, i32 0, i32 4
  %10 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %11 = load i64, i64* @INTF_CAPTURE, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %10, i64 %11
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = call %struct.uac_format_type_i_discrete_descriptor* @find_format_descriptor(%struct.TYPE_13__* %13)
  store %struct.uac_format_type_i_discrete_descriptor* %14, %struct.uac_format_type_i_discrete_descriptor** %4, align 8
  %15 = load %struct.ua101*, %struct.ua101** %3, align 8
  %16 = getelementptr inbounds %struct.ua101, %struct.ua101* %15, i32 0, i32 4
  %17 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %16, align 8
  %18 = load i64, i64* @INTF_PLAYBACK, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %17, i64 %18
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = call %struct.uac_format_type_i_discrete_descriptor* @find_format_descriptor(%struct.TYPE_13__* %20)
  store %struct.uac_format_type_i_discrete_descriptor* %21, %struct.uac_format_type_i_discrete_descriptor** %5, align 8
  %22 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %4, align 8
  %23 = icmp ne %struct.uac_format_type_i_discrete_descriptor* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %5, align 8
  %26 = icmp ne %struct.uac_format_type_i_discrete_descriptor* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %1
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %255

30:                                               ; preds = %24
  %31 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %4, align 8
  %32 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %42 [
    i32 3, label %34
    i32 4, label %38
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* @SNDRV_PCM_FMTBIT_S24_3LE, align 4
  %36 = load %struct.ua101*, %struct.ua101** %3, align 8
  %37 = getelementptr inbounds %struct.ua101, %struct.ua101* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  br label %50

38:                                               ; preds = %30
  %39 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_LE, align 4
  %40 = load %struct.ua101*, %struct.ua101** %3, align 8
  %41 = getelementptr inbounds %struct.ua101, %struct.ua101* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  br label %50

42:                                               ; preds = %30
  %43 = load %struct.ua101*, %struct.ua101** %3, align 8
  %44 = getelementptr inbounds %struct.ua101, %struct.ua101* %43, i32 0, i32 3
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENXIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %255

50:                                               ; preds = %38, %34
  %51 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %4, align 8
  %52 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %5, align 8
  %55 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load %struct.ua101*, %struct.ua101** %3, align 8
  %60 = getelementptr inbounds %struct.ua101, %struct.ua101* %59, i32 0, i32 3
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @ENXIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %255

66:                                               ; preds = %50
  %67 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %4, align 8
  %68 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 24
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %5, align 8
  %73 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 24
  br i1 %75, label %76, label %84

76:                                               ; preds = %71, %66
  %77 = load %struct.ua101*, %struct.ua101** %3, align 8
  %78 = getelementptr inbounds %struct.ua101, %struct.ua101* %77, i32 0, i32 3
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = call i32 (i32*, i8*, ...) @dev_err(i32* %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @ENXIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %255

84:                                               ; preds = %71
  %85 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %4, align 8
  %86 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @combine_triple(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.ua101*, %struct.ua101** %3, align 8
  %93 = getelementptr inbounds %struct.ua101, %struct.ua101* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %5, align 8
  %95 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @combine_triple(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %7, align 4
  %101 = load %struct.ua101*, %struct.ua101** %3, align 8
  %102 = getelementptr inbounds %struct.ua101, %struct.ua101* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %84
  %107 = load %struct.ua101*, %struct.ua101** %3, align 8
  %108 = getelementptr inbounds %struct.ua101, %struct.ua101* %107, i32 0, i32 3
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.ua101*, %struct.ua101** %3, align 8
  %113 = getelementptr inbounds %struct.ua101, %struct.ua101* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32*, i8*, ...) @dev_err(i32* %110, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %111, i32 %114)
  %116 = load i32, i32* @ENXIO, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %255

118:                                              ; preds = %84
  %119 = load %struct.ua101*, %struct.ua101** %3, align 8
  %120 = getelementptr inbounds %struct.ua101, %struct.ua101* %119, i32 0, i32 3
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  switch i32 %123, label %130 [
    i32 129, label %124
    i32 128, label %127
  ]

124:                                              ; preds = %118
  %125 = load %struct.ua101*, %struct.ua101** %3, align 8
  %126 = getelementptr inbounds %struct.ua101, %struct.ua101* %125, i32 0, i32 1
  store i32 1000, i32* %126, align 4
  br label %138

127:                                              ; preds = %118
  %128 = load %struct.ua101*, %struct.ua101** %3, align 8
  %129 = getelementptr inbounds %struct.ua101, %struct.ua101* %128, i32 0, i32 1
  store i32 8000, i32* %129, align 4
  br label %138

130:                                              ; preds = %118
  %131 = load %struct.ua101*, %struct.ua101** %3, align 8
  %132 = getelementptr inbounds %struct.ua101, %struct.ua101* %131, i32 0, i32 3
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = call i32 (i32*, i8*, ...) @dev_err(i32* %134, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %136 = load i32, i32* @ENXIO, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %255

138:                                              ; preds = %127, %124
  %139 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %4, align 8
  %140 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.ua101*, %struct.ua101** %3, align 8
  %143 = getelementptr inbounds %struct.ua101, %struct.ua101* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  %145 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %5, align 8
  %146 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.ua101*, %struct.ua101** %3, align 8
  %149 = getelementptr inbounds %struct.ua101, %struct.ua101* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %4, align 8
  %152 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.ua101*, %struct.ua101** %3, align 8
  %155 = getelementptr inbounds %struct.ua101, %struct.ua101* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %153, %157
  %159 = load %struct.ua101*, %struct.ua101** %3, align 8
  %160 = getelementptr inbounds %struct.ua101, %struct.ua101* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  store i32 %158, i32* %161, align 4
  %162 = load %struct.uac_format_type_i_discrete_descriptor*, %struct.uac_format_type_i_discrete_descriptor** %5, align 8
  %163 = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, %struct.uac_format_type_i_discrete_descriptor* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.ua101*, %struct.ua101** %3, align 8
  %166 = getelementptr inbounds %struct.ua101, %struct.ua101* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = mul nsw i32 %164, %168
  %170 = load %struct.ua101*, %struct.ua101** %3, align 8
  %171 = getelementptr inbounds %struct.ua101, %struct.ua101* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  store i32 %169, i32* %172, align 4
  %173 = load %struct.ua101*, %struct.ua101** %3, align 8
  %174 = getelementptr inbounds %struct.ua101, %struct.ua101* %173, i32 0, i32 4
  %175 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %174, align 8
  %176 = load i64, i64* @INTF_CAPTURE, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %175, i64 %176
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i64 1
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i64 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %185, %struct.usb_endpoint_descriptor** %6, align 8
  %186 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %187 = call i32 @usb_endpoint_is_isoc_in(%struct.usb_endpoint_descriptor* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %138
  %190 = load %struct.ua101*, %struct.ua101** %3, align 8
  %191 = getelementptr inbounds %struct.ua101, %struct.ua101* %190, i32 0, i32 3
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 1
  %194 = call i32 (i32*, i8*, ...) @dev_err(i32* %193, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %195 = load i32, i32* @ENXIO, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %2, align 4
  br label %255

197:                                              ; preds = %138
  %198 = load %struct.ua101*, %struct.ua101** %3, align 8
  %199 = getelementptr inbounds %struct.ua101, %struct.ua101* %198, i32 0, i32 3
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %199, align 8
  %201 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %202 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %201)
  %203 = call i32 @usb_rcvisocpipe(%struct.TYPE_12__* %200, i32 %202)
  %204 = load %struct.ua101*, %struct.ua101** %3, align 8
  %205 = getelementptr inbounds %struct.ua101, %struct.ua101* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 3
  store i32 %203, i32* %206, align 8
  %207 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %208 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i8* @le16_to_cpu(i32 %209)
  %211 = load %struct.ua101*, %struct.ua101** %3, align 8
  %212 = getelementptr inbounds %struct.ua101, %struct.ua101* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 2
  store i8* %210, i8** %213, align 8
  %214 = load %struct.ua101*, %struct.ua101** %3, align 8
  %215 = getelementptr inbounds %struct.ua101, %struct.ua101* %214, i32 0, i32 4
  %216 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %215, align 8
  %217 = load i64, i64* @INTF_PLAYBACK, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %216, i64 %217
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i64 1
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i64 0
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %226, %struct.usb_endpoint_descriptor** %6, align 8
  %227 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %228 = call i32 @usb_endpoint_is_isoc_out(%struct.usb_endpoint_descriptor* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %238, label %230

230:                                              ; preds = %197
  %231 = load %struct.ua101*, %struct.ua101** %3, align 8
  %232 = getelementptr inbounds %struct.ua101, %struct.ua101* %231, i32 0, i32 3
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  %235 = call i32 (i32*, i8*, ...) @dev_err(i32* %234, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %236 = load i32, i32* @ENXIO, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %2, align 4
  br label %255

238:                                              ; preds = %197
  %239 = load %struct.ua101*, %struct.ua101** %3, align 8
  %240 = getelementptr inbounds %struct.ua101, %struct.ua101* %239, i32 0, i32 3
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %243 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %242)
  %244 = call i32 @usb_sndisocpipe(%struct.TYPE_12__* %241, i32 %243)
  %245 = load %struct.ua101*, %struct.ua101** %3, align 8
  %246 = getelementptr inbounds %struct.ua101, %struct.ua101* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 3
  store i32 %244, i32* %247, align 8
  %248 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %249 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i8* @le16_to_cpu(i32 %250)
  %252 = load %struct.ua101*, %struct.ua101** %3, align 8
  %253 = getelementptr inbounds %struct.ua101, %struct.ua101* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 2
  store i8* %251, i8** %254, align 8
  store i32 0, i32* %2, align 4
  br label %255

255:                                              ; preds = %238, %230, %189, %130, %106, %76, %58, %42, %27
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local %struct.uac_format_type_i_discrete_descriptor* @find_format_descriptor(%struct.TYPE_13__*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i8* @combine_triple(i32) #1

declare dso_local i32 @usb_endpoint_is_isoc_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @usb_endpoint_is_isoc_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_sndisocpipe(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
