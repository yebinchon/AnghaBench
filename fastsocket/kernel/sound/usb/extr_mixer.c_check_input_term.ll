; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_check_input_term.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_check_input_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_build = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_audio_term = type { i32, i32, i32, i8*, i32 }
%struct.uac_input_terminal_descriptor = type { i32, i32, i32, i32 }
%struct.uac2_input_terminal_descriptor = type { i32, i32, i32, i32, i32 }
%struct.uac_feature_unit_descriptor = type { i32 }
%struct.uac_mixer_unit_descriptor = type { i32 }
%struct.uac_selector_unit_descriptor = type { i32*, i32 }
%struct.uac_processing_unit_descriptor = type { i32*, i32, i32 }
%struct.uac_clock_source_descriptor = type { i32, i32 }

@UAC_VERSION_1 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixer_build*, i32, %struct.usb_audio_term*)* @check_input_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_input_term(%struct.mixer_build* %0, i32 %1, %struct.usb_audio_term* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mixer_build*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_audio_term*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.uac_input_terminal_descriptor*, align 8
  %12 = alloca %struct.uac2_input_terminal_descriptor*, align 8
  %13 = alloca %struct.uac_feature_unit_descriptor*, align 8
  %14 = alloca %struct.uac_mixer_unit_descriptor*, align 8
  %15 = alloca %struct.uac_selector_unit_descriptor*, align 8
  %16 = alloca %struct.uac_processing_unit_descriptor*, align 8
  %17 = alloca %struct.uac_clock_source_descriptor*, align 8
  store %struct.mixer_build* %0, %struct.mixer_build** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.usb_audio_term* %2, %struct.usb_audio_term** %7, align 8
  %18 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %19 = call i32 @memset(%struct.usb_audio_term* %18, i32 0, i32 32)
  br label %20

20:                                               ; preds = %229, %3
  %21 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i8* @find_audio_control_unit(%struct.mixer_build* %21, i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %230

25:                                               ; preds = %20
  %26 = load i8*, i8** %9, align 8
  store i8* %26, i8** %10, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %29 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  switch i32 %33, label %226 [
    i32 130, label %34
    i32 131, label %106
    i32 129, label %112
    i32 128, label %138
    i32 133, label %138
    i32 134, label %167
    i32 135, label %167
    i32 132, label %209
  ]

34:                                               ; preds = %25
  %35 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %36 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UAC_VERSION_1, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %34
  %43 = load i8*, i8** %9, align 8
  %44 = bitcast i8* %43 to %struct.uac_input_terminal_descriptor*
  store %struct.uac_input_terminal_descriptor* %44, %struct.uac_input_terminal_descriptor** %11, align 8
  %45 = load %struct.uac_input_terminal_descriptor*, %struct.uac_input_terminal_descriptor** %11, align 8
  %46 = getelementptr inbounds %struct.uac_input_terminal_descriptor, %struct.uac_input_terminal_descriptor* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le16_to_cpu(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %51 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.uac_input_terminal_descriptor*, %struct.uac_input_terminal_descriptor** %11, align 8
  %53 = getelementptr inbounds %struct.uac_input_terminal_descriptor, %struct.uac_input_terminal_descriptor* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %56 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.uac_input_terminal_descriptor*, %struct.uac_input_terminal_descriptor** %11, align 8
  %58 = getelementptr inbounds %struct.uac_input_terminal_descriptor, %struct.uac_input_terminal_descriptor* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @le16_to_cpu(i32 %59)
  %61 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %62 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load %struct.uac_input_terminal_descriptor*, %struct.uac_input_terminal_descriptor** %11, align 8
  %64 = getelementptr inbounds %struct.uac_input_terminal_descriptor, %struct.uac_input_terminal_descriptor* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %67 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  br label %105

68:                                               ; preds = %34
  %69 = load i8*, i8** %9, align 8
  %70 = bitcast i8* %69 to %struct.uac2_input_terminal_descriptor*
  store %struct.uac2_input_terminal_descriptor* %70, %struct.uac2_input_terminal_descriptor** %12, align 8
  %71 = load %struct.uac2_input_terminal_descriptor*, %struct.uac2_input_terminal_descriptor** %12, align 8
  %72 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, %struct.uac2_input_terminal_descriptor* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @le16_to_cpu(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %77 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.uac2_input_terminal_descriptor*, %struct.uac2_input_terminal_descriptor** %12, align 8
  %79 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, %struct.uac2_input_terminal_descriptor* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %82 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.uac2_input_terminal_descriptor*, %struct.uac2_input_terminal_descriptor** %12, align 8
  %84 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, %struct.uac2_input_terminal_descriptor* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @le32_to_cpu(i32 %85)
  %87 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %88 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load %struct.uac2_input_terminal_descriptor*, %struct.uac2_input_terminal_descriptor** %12, align 8
  %90 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, %struct.uac2_input_terminal_descriptor* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %93 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %95 = load %struct.uac2_input_terminal_descriptor*, %struct.uac2_input_terminal_descriptor** %12, align 8
  %96 = getelementptr inbounds %struct.uac2_input_terminal_descriptor, %struct.uac2_input_terminal_descriptor* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %99 = call i32 @check_input_term(%struct.mixer_build* %94, i32 %97, %struct.usb_audio_term* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %68
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %4, align 4
  br label %233

104:                                              ; preds = %68
  br label %105

105:                                              ; preds = %104, %42
  store i32 0, i32* %4, align 4
  br label %233

106:                                              ; preds = %25
  %107 = load i8*, i8** %9, align 8
  %108 = bitcast i8* %107 to %struct.uac_feature_unit_descriptor*
  store %struct.uac_feature_unit_descriptor* %108, %struct.uac_feature_unit_descriptor** %13, align 8
  %109 = load %struct.uac_feature_unit_descriptor*, %struct.uac_feature_unit_descriptor** %13, align 8
  %110 = getelementptr inbounds %struct.uac_feature_unit_descriptor, %struct.uac_feature_unit_descriptor* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %6, align 4
  br label %229

112:                                              ; preds = %25
  %113 = load i8*, i8** %9, align 8
  %114 = bitcast i8* %113 to %struct.uac_mixer_unit_descriptor*
  store %struct.uac_mixer_unit_descriptor* %114, %struct.uac_mixer_unit_descriptor** %14, align 8
  %115 = load %struct.uac_mixer_unit_descriptor*, %struct.uac_mixer_unit_descriptor** %14, align 8
  %116 = getelementptr inbounds %struct.uac_mixer_unit_descriptor, %struct.uac_mixer_unit_descriptor* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 16
  %119 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %120 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.uac_mixer_unit_descriptor*, %struct.uac_mixer_unit_descriptor** %14, align 8
  %122 = call i32 @uac_mixer_unit_bNrChannels(%struct.uac_mixer_unit_descriptor* %121)
  %123 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %124 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 8
  %125 = load %struct.uac_mixer_unit_descriptor*, %struct.uac_mixer_unit_descriptor** %14, align 8
  %126 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %127 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @uac_mixer_unit_wChannelConfig(%struct.uac_mixer_unit_descriptor* %125, i32 %130)
  %132 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %133 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %132, i32 0, i32 3
  store i8* %131, i8** %133, align 8
  %134 = load %struct.uac_mixer_unit_descriptor*, %struct.uac_mixer_unit_descriptor** %14, align 8
  %135 = call i32 @uac_mixer_unit_iMixer(%struct.uac_mixer_unit_descriptor* %134)
  %136 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %137 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  store i32 0, i32* %4, align 4
  br label %233

138:                                              ; preds = %25, %25
  %139 = load i8*, i8** %9, align 8
  %140 = bitcast i8* %139 to %struct.uac_selector_unit_descriptor*
  store %struct.uac_selector_unit_descriptor* %140, %struct.uac_selector_unit_descriptor** %15, align 8
  %141 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %142 = load %struct.uac_selector_unit_descriptor*, %struct.uac_selector_unit_descriptor** %15, align 8
  %143 = getelementptr inbounds %struct.uac_selector_unit_descriptor, %struct.uac_selector_unit_descriptor* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %148 = call i32 @check_input_term(%struct.mixer_build* %141, i32 %146, %struct.usb_audio_term* %147)
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %138
  %151 = load i32, i32* @ENODEV, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  br label %233

153:                                              ; preds = %138
  %154 = load %struct.uac_selector_unit_descriptor*, %struct.uac_selector_unit_descriptor** %15, align 8
  %155 = getelementptr inbounds %struct.uac_selector_unit_descriptor, %struct.uac_selector_unit_descriptor* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = shl i32 %156, 16
  %158 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %159 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %162 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.uac_selector_unit_descriptor*, %struct.uac_selector_unit_descriptor** %15, align 8
  %164 = call i32 @uac_selector_unit_iSelector(%struct.uac_selector_unit_descriptor* %163)
  %165 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %166 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  store i32 0, i32* %4, align 4
  br label %233

167:                                              ; preds = %25, %25
  %168 = load i8*, i8** %9, align 8
  %169 = bitcast i8* %168 to %struct.uac_processing_unit_descriptor*
  store %struct.uac_processing_unit_descriptor* %169, %struct.uac_processing_unit_descriptor** %16, align 8
  %170 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %16, align 8
  %171 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %167
  %175 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %16, align 8
  %176 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %6, align 4
  br label %229

180:                                              ; preds = %167
  %181 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %16, align 8
  %182 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = shl i32 %183, 16
  %185 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %186 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %16, align 8
  %188 = call i32 @uac_processing_unit_bNrChannels(%struct.uac_processing_unit_descriptor* %187)
  %189 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %190 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 8
  %191 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %16, align 8
  %192 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %193 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %192, i32 0, i32 0
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i8* @uac_processing_unit_wChannelConfig(%struct.uac_processing_unit_descriptor* %191, i32 %196)
  %198 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %199 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %198, i32 0, i32 3
  store i8* %197, i8** %199, align 8
  %200 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %16, align 8
  %201 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %202 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %201, i32 0, i32 0
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @uac_processing_unit_iProcessing(%struct.uac_processing_unit_descriptor* %200, i32 %205)
  %207 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %208 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 8
  store i32 0, i32* %4, align 4
  br label %233

209:                                              ; preds = %25
  %210 = load i8*, i8** %9, align 8
  %211 = bitcast i8* %210 to %struct.uac_clock_source_descriptor*
  store %struct.uac_clock_source_descriptor* %211, %struct.uac_clock_source_descriptor** %17, align 8
  %212 = load %struct.uac_clock_source_descriptor*, %struct.uac_clock_source_descriptor** %17, align 8
  %213 = getelementptr inbounds %struct.uac_clock_source_descriptor, %struct.uac_clock_source_descriptor* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = shl i32 %214, 16
  %216 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %217 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* %6, align 4
  %219 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %220 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load %struct.uac_clock_source_descriptor*, %struct.uac_clock_source_descriptor** %17, align 8
  %222 = getelementptr inbounds %struct.uac_clock_source_descriptor, %struct.uac_clock_source_descriptor* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.usb_audio_term*, %struct.usb_audio_term** %7, align 8
  %225 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 8
  store i32 0, i32* %4, align 4
  br label %233

226:                                              ; preds = %25
  %227 = load i32, i32* @ENODEV, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %4, align 4
  br label %233

229:                                              ; preds = %174, %106
  br label %20

230:                                              ; preds = %20
  %231 = load i32, i32* @ENODEV, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %4, align 4
  br label %233

233:                                              ; preds = %230, %226, %209, %180, %153, %150, %112, %105, %102
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local i32 @memset(%struct.usb_audio_term*, i32, i32) #1

declare dso_local i8* @find_audio_control_unit(%struct.mixer_build*, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @uac_mixer_unit_bNrChannels(%struct.uac_mixer_unit_descriptor*) #1

declare dso_local i8* @uac_mixer_unit_wChannelConfig(%struct.uac_mixer_unit_descriptor*, i32) #1

declare dso_local i32 @uac_mixer_unit_iMixer(%struct.uac_mixer_unit_descriptor*) #1

declare dso_local i32 @uac_selector_unit_iSelector(%struct.uac_selector_unit_descriptor*) #1

declare dso_local i32 @uac_processing_unit_bNrChannels(%struct.uac_processing_unit_descriptor*) #1

declare dso_local i8* @uac_processing_unit_wChannelConfig(%struct.uac_processing_unit_descriptor*, i32) #1

declare dso_local i32 @uac_processing_unit_iProcessing(%struct.uac_processing_unit_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
