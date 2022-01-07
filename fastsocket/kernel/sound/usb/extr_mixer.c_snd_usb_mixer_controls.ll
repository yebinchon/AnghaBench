; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_snd_usb_mixer_controls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_snd_usb_mixer_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbmix_ctl_map = type { i64, i32, i32, i32 }
%struct.usb_mixer_interface = type { i64, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.mixer_build = type { %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.usb_mixer_interface* }
%struct.TYPE_6__ = type { i32, i8*, i32 }
%struct.uac1_output_terminal_descriptor = type { i32, i32, i32, i32, i32 }
%struct.uac2_output_terminal_descriptor = type { i32, i32, i32, i32, i32, i32 }

@usbmix_ctl_maps = common dso_local global %struct.usbmix_ctl_map* null, align 8
@UAC_OUTPUT_TERMINAL = common dso_local global i32 0, align 4
@UAC_VERSION_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*)* @snd_usb_mixer_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_mixer_controls(%struct.usb_mixer_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_mixer_interface*, align 8
  %4 = alloca %struct.mixer_build, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbmix_ctl_map*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.uac1_output_terminal_descriptor*, align 8
  %9 = alloca %struct.uac2_output_terminal_descriptor*, align 8
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %3, align 8
  %10 = call i32 @memset(%struct.mixer_build* %4, i32 0, i32 64)
  %11 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %12 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 4
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %14, align 8
  %15 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %16 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 7
  store %struct.usb_mixer_interface* %15, %struct.usb_mixer_interface** %16, align 8
  %17 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %18 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 6
  store i32 %21, i32* %22, align 4
  %23 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %24 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 5
  store i32 %27, i32* %28, align 8
  %29 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** @usbmix_ctl_maps, align 8
  store %struct.usbmix_ctl_map* %29, %struct.usbmix_ctl_map** %6, align 8
  br label %30

30:                                               ; preds = %59, %1
  %31 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %6, align 8
  %32 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %30
  %36 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %6, align 8
  %37 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %38, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %35
  %45 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %6, align 8
  %46 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 3
  store i32 %47, i32* %48, align 8
  %49 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %6, align 8
  %50 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %6, align 8
  %54 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %57 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  br label %62

58:                                               ; preds = %35
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.usbmix_ctl_map*, %struct.usbmix_ctl_map** %6, align 8
  %61 = getelementptr inbounds %struct.usbmix_ctl_map, %struct.usbmix_ctl_map* %60, i32 1
  store %struct.usbmix_ctl_map* %61, %struct.usbmix_ctl_map** %6, align 8
  br label %30

62:                                               ; preds = %44, %30
  store i8* null, i8** %7, align 8
  br label %63

63:                                               ; preds = %175, %133, %92, %62
  %64 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %65 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %70 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* @UAC_OUTPUT_TERMINAL, align 4
  %76 = call i8* @snd_usb_find_csint_desc(i32 %68, i32 %73, i8* %74, i32 %75)
  store i8* %76, i8** %7, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %176

78:                                               ; preds = %63
  %79 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %80 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @UAC_VERSION_1, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %125

84:                                               ; preds = %78
  %85 = load i8*, i8** %7, align 8
  %86 = bitcast i8* %85 to %struct.uac1_output_terminal_descriptor*
  store %struct.uac1_output_terminal_descriptor* %86, %struct.uac1_output_terminal_descriptor** %8, align 8
  %87 = load %struct.uac1_output_terminal_descriptor*, %struct.uac1_output_terminal_descriptor** %8, align 8
  %88 = getelementptr inbounds %struct.uac1_output_terminal_descriptor, %struct.uac1_output_terminal_descriptor* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ult i64 %90, 20
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %63

93:                                               ; preds = %84
  %94 = load %struct.uac1_output_terminal_descriptor*, %struct.uac1_output_terminal_descriptor** %8, align 8
  %95 = getelementptr inbounds %struct.uac1_output_terminal_descriptor, %struct.uac1_output_terminal_descriptor* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @set_bit(i32 %96, i32 %98)
  %100 = load %struct.uac1_output_terminal_descriptor*, %struct.uac1_output_terminal_descriptor** %8, align 8
  %101 = getelementptr inbounds %struct.uac1_output_terminal_descriptor, %struct.uac1_output_terminal_descriptor* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.uac1_output_terminal_descriptor*, %struct.uac1_output_terminal_descriptor** %8, align 8
  %106 = getelementptr inbounds %struct.uac1_output_terminal_descriptor, %struct.uac1_output_terminal_descriptor* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @le16_to_cpu(i32 %107)
  %109 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.uac1_output_terminal_descriptor*, %struct.uac1_output_terminal_descriptor** %8, align 8
  %112 = getelementptr inbounds %struct.uac1_output_terminal_descriptor, %struct.uac1_output_terminal_descriptor* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.uac1_output_terminal_descriptor*, %struct.uac1_output_terminal_descriptor** %8, align 8
  %117 = getelementptr inbounds %struct.uac1_output_terminal_descriptor, %struct.uac1_output_terminal_descriptor* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @parse_audio_unit(%struct.mixer_build* %4, i32 %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %93
  %123 = load i32, i32* %5, align 4
  store i32 %123, i32* %2, align 4
  br label %177

124:                                              ; preds = %93
  br label %175

125:                                              ; preds = %78
  %126 = load i8*, i8** %7, align 8
  %127 = bitcast i8* %126 to %struct.uac2_output_terminal_descriptor*
  store %struct.uac2_output_terminal_descriptor* %127, %struct.uac2_output_terminal_descriptor** %9, align 8
  %128 = load %struct.uac2_output_terminal_descriptor*, %struct.uac2_output_terminal_descriptor** %9, align 8
  %129 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, %struct.uac2_output_terminal_descriptor* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = icmp ult i64 %131, 24
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %63

134:                                              ; preds = %125
  %135 = load %struct.uac2_output_terminal_descriptor*, %struct.uac2_output_terminal_descriptor** %9, align 8
  %136 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, %struct.uac2_output_terminal_descriptor* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @set_bit(i32 %137, i32 %139)
  %141 = load %struct.uac2_output_terminal_descriptor*, %struct.uac2_output_terminal_descriptor** %9, align 8
  %142 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, %struct.uac2_output_terminal_descriptor* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.uac2_output_terminal_descriptor*, %struct.uac2_output_terminal_descriptor** %9, align 8
  %147 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, %struct.uac2_output_terminal_descriptor* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @le16_to_cpu(i32 %148)
  %150 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = load %struct.uac2_output_terminal_descriptor*, %struct.uac2_output_terminal_descriptor** %9, align 8
  %153 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, %struct.uac2_output_terminal_descriptor* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %4, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.uac2_output_terminal_descriptor*, %struct.uac2_output_terminal_descriptor** %9, align 8
  %158 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, %struct.uac2_output_terminal_descriptor* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @parse_audio_unit(%struct.mixer_build* %4, i32 %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %134
  %164 = load i32, i32* %5, align 4
  store i32 %164, i32* %2, align 4
  br label %177

165:                                              ; preds = %134
  %166 = load %struct.uac2_output_terminal_descriptor*, %struct.uac2_output_terminal_descriptor** %9, align 8
  %167 = getelementptr inbounds %struct.uac2_output_terminal_descriptor, %struct.uac2_output_terminal_descriptor* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @parse_audio_unit(%struct.mixer_build* %4, i32 %168)
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* %5, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = load i32, i32* %5, align 4
  store i32 %173, i32* %2, align 4
  br label %177

174:                                              ; preds = %165
  br label %175

175:                                              ; preds = %174, %124
  br label %63

176:                                              ; preds = %63
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %176, %172, %163, %122
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @memset(%struct.mixer_build*, i32, i32) #1

declare dso_local i8* @snd_usb_find_csint_desc(i32, i32, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @parse_audio_unit(%struct.mixer_build*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
