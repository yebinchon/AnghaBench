; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_present_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_present_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_spec_per_pin = type { %struct.TYPE_4__*, i32, i32, %struct.hdmi_eld, %struct.hda_codec* }
%struct.TYPE_4__ = type { i32 }
%struct.hdmi_eld = type { i32, i32, i64, i32, i32, i32 }
%struct.hda_codec = type { %struct.TYPE_3__*, i32, %struct.hdmi_spec* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hdmi_spec = type { %struct.hdmi_eld }

@AC_PINSENSE_PRESENCE = common dso_local global i32 0, align 4
@AC_PINSENSE_ELDV = common dso_local global i32 0, align 4
@SND_PR_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"HDMI status: Codec=%d Pin=%d Presence_Detect=%d ELD_Valid=%d\0A\00", align 1
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_spec_per_pin*, i32)* @hdmi_present_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_present_sense(%struct.hdmi_spec_per_pin* %0, i32 %1) #0 {
  %3 = alloca %struct.hdmi_spec_per_pin*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.hdmi_spec*, align 8
  %7 = alloca %struct.hdmi_eld*, align 8
  %8 = alloca %struct.hdmi_eld*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hdmi_spec_per_pin* %0, %struct.hdmi_spec_per_pin** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %3, align 8
  %14 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %13, i32 0, i32 4
  %15 = load %struct.hda_codec*, %struct.hda_codec** %14, align 8
  store %struct.hda_codec* %15, %struct.hda_codec** %5, align 8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 2
  %18 = load %struct.hdmi_spec*, %struct.hdmi_spec** %17, align 8
  store %struct.hdmi_spec* %18, %struct.hdmi_spec** %6, align 8
  %19 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %20 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %19, i32 0, i32 0
  store %struct.hdmi_eld* %20, %struct.hdmi_eld** %7, align 8
  %21 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %3, align 8
  %22 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %21, i32 0, i32 3
  store %struct.hdmi_eld* %22, %struct.hdmi_eld** %8, align 8
  %23 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %3, align 8
  %24 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @snd_hda_pin_sense(%struct.hda_codec* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @AC_PINSENSE_PRESENCE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %37 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %39 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %2
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @AC_PINSENSE_ELDV, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %51 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %55

52:                                               ; preds = %2
  %53 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %54 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %42
  %56 = load i32, i32* @SND_PR_VERBOSE, align 4
  %57 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %58 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %62 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %65 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @_snd_printd(i32 %56, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i32 %63, i32 %66)
  %68 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %69 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %127

72:                                               ; preds = %55
  %73 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %76 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %79 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %78, i32 0, i32 2
  %80 = call i64 @snd_hdmi_get_eld(%struct.hda_codec* %73, i32 %74, i32 %77, i64* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %84 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %83, i32 0, i32 1
  store i32 0, i32* %84, align 4
  br label %103

85:                                               ; preds = %72
  %86 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %87 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %86, i32 0, i32 4
  %88 = call i32 @memset(i32* %87, i32 0, i32 4)
  %89 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %90 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %89, i32 0, i32 4
  %91 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %92 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %95 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @snd_hdmi_parse_eld(i32* %90, i32 %93, i64 %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %85
  %100 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %101 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %85
  br label %103

103:                                              ; preds = %102, %82
  %104 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %105 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %110 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %109, i32 0, i32 4
  %111 = call i32 @snd_hdmi_show_eld(i32* %110)
  store i32 1, i32* %11, align 4
  br label %126

112:                                              ; preds = %103
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %117 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %116, i32 0, i32 0
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %3, align 8
  %122 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %121, i32 0, i32 1
  %123 = call i32 @msecs_to_jiffies(i32 300)
  %124 = call i32 @queue_delayed_work(i32 %120, i32* %122, i32 %123)
  br label %216

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %125, %108
  br label %127

127:                                              ; preds = %126, %55
  %128 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %129 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %128, i32 0, i32 3
  %130 = call i32 @mutex_lock(i32* %129)
  %131 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %132 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %127
  %136 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %137 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %135
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %141

141:                                              ; preds = %140, %135, %127
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %196

144:                                              ; preds = %141
  %145 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %146 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %149 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %151 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %154 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %152, %155
  br i1 %156, label %169, label %157

157:                                              ; preds = %144
  %158 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %159 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %162 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %165 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = call i64 @memcmp(i32 %160, i32 %163, i64 %166)
  %168 = icmp ne i64 %167, 0
  br label %169

169:                                              ; preds = %157, %144
  %170 = phi i1 [ true, %144 ], [ %168, %157 ]
  %171 = zext i1 %170 to i32
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %169
  %175 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %176 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %179 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %182 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @memcpy(i32 %177, i32 %180, i64 %183)
  br label %185

185:                                              ; preds = %174, %169
  %186 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %187 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %190 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %189, i32 0, i32 2
  store i64 %188, i64* %190, align 8
  %191 = load %struct.hdmi_eld*, %struct.hdmi_eld** %7, align 8
  %192 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %195 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %194, i32 0, i32 4
  store i32 %193, i32* %195, align 4
  br label %196

196:                                              ; preds = %185, %141
  %197 = load %struct.hdmi_eld*, %struct.hdmi_eld** %8, align 8
  %198 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %197, i32 0, i32 3
  %199 = call i32 @mutex_unlock(i32* %198)
  %200 = load i32, i32* %12, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %196
  %203 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %204 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %203, i32 0, i32 0
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %209 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %210 = or i32 %208, %209
  %211 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %3, align 8
  %212 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %211, i32 0, i32 0
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = call i32 @snd_ctl_notify(i32 %207, i32 %210, i32* %214)
  br label %216

216:                                              ; preds = %115, %202, %196
  ret void
}

declare dso_local i32 @snd_hda_pin_sense(%struct.hda_codec*, i32) #1

declare dso_local i32 @_snd_printd(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @snd_hdmi_get_eld(%struct.hda_codec*, i32, i32, i64*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @snd_hdmi_parse_eld(i32*, i32, i64) #1

declare dso_local i32 @snd_hdmi_show_eld(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
