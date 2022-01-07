; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_subsystem_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_subsystem_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, %struct.TYPE_8__*, %struct.alc_spec* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.alc_spec = type { %struct.TYPE_10__, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32*, i32, i64* }
%struct.TYPE_6__ = type { i32, i64 }

@ALC_FIXUP_SKU_IGNORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"realtek: No valid SSID, checking pincfg 0x%08x for NID 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"realtek: Enabling init ASM_ID=0x%04x CODEC_ID=%08x\0A\00", align 1
@ALC_INIT_GPIO1 = common dso_local global i32 0, align 4
@ALC_INIT_GPIO2 = common dso_local global i32 0, align 4
@ALC_INIT_GPIO3 = common dso_local global i32 0, align 4
@ALC_INIT_DEFAULT = common dso_local global i32 0, align 4
@AUTO_PIN_HP_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32, i32, i32)* @alc_subsystem_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc_subsystem_id(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.alc_spec*, align 8
  %17 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 3
  %20 = load %struct.alc_spec*, %struct.alc_spec** %19, align 8
  store %struct.alc_spec* %20, %struct.alc_spec** %16, align 8
  %21 = load %struct.alc_spec*, %struct.alc_spec** %16, align 8
  %22 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %5
  %27 = load %struct.alc_spec*, %struct.alc_spec** %16, align 8
  %28 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @ALC_FIXUP_SKU_IGNORE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %212

35:                                               ; preds = %26
  br label %102

36:                                               ; preds = %5
  %37 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %38 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 65535
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %43 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %41, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %36
  %51 = load i32, i32* %12, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %102

55:                                               ; preds = %50, %36
  store i32 29, i32* %15, align 4
  %56 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %57 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 283902560
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 23, i32* %15, align 4
  br label %61

61:                                               ; preds = %60, %55
  %62 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %62, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @snd_printd(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32, i32* %12, align 4
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %212

72:                                               ; preds = %61
  %73 = load i32, i32* %12, align 4
  %74 = lshr i32 %73, 30
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %212

77:                                               ; preds = %72
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %78

78:                                               ; preds = %91, %77
  %79 = load i32, i32* %14, align 4
  %80 = icmp ult i32 %79, 16
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %14, align 4
  %84 = lshr i32 %82, %83
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* %13, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %87, %81
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %14, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %78

94:                                               ; preds = %78
  %95 = load i32, i32* %12, align 4
  %96 = lshr i32 %95, 16
  %97 = and i32 %96, 15
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i32 0, i32* %6, align 4
  br label %212

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %54, %35
  %103 = load i32, i32* %12, align 4
  %104 = and i32 %103, 65535
  %105 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %106 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @snd_printd(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %107)
  %109 = load i32, i32* %12, align 4
  %110 = and i32 %109, 56
  %111 = lshr i32 %110, 3
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  switch i32 %112, label %126 [
    i32 1, label %113
    i32 3, label %117
    i32 7, label %121
    i32 5, label %125
  ]

113:                                              ; preds = %102
  %114 = load i32, i32* @ALC_INIT_GPIO1, align 4
  %115 = load %struct.alc_spec*, %struct.alc_spec** %16, align 8
  %116 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  br label %130

117:                                              ; preds = %102
  %118 = load i32, i32* @ALC_INIT_GPIO2, align 4
  %119 = load %struct.alc_spec*, %struct.alc_spec** %16, align 8
  %120 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  br label %130

121:                                              ; preds = %102
  %122 = load i32, i32* @ALC_INIT_GPIO3, align 4
  %123 = load %struct.alc_spec*, %struct.alc_spec** %16, align 8
  %124 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  br label %130

125:                                              ; preds = %102
  br label %126

126:                                              ; preds = %102, %125
  %127 = load i32, i32* @ALC_INIT_DEFAULT, align 4
  %128 = load %struct.alc_spec*, %struct.alc_spec** %16, align 8
  %129 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %126, %121, %117, %113
  %131 = load i32, i32* %12, align 4
  %132 = and i32 %131, 32768
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  store i32 1, i32* %6, align 4
  br label %212

135:                                              ; preds = %130
  %136 = load %struct.alc_spec*, %struct.alc_spec** %16, align 8
  %137 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %211, label %144

144:                                              ; preds = %135
  %145 = load %struct.alc_spec*, %struct.alc_spec** %16, align 8
  %146 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 3
  %149 = load i64*, i64** %148, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %144
  %154 = load %struct.alc_spec*, %struct.alc_spec** %16, align 8
  %155 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %211, label %161

161:                                              ; preds = %153, %144
  %162 = load i32, i32* %12, align 4
  %163 = lshr i32 %162, 11
  %164 = and i32 %163, 3
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %17, align 4
  br label %188

169:                                              ; preds = %161
  %170 = load i32, i32* %13, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = load i32, i32* %9, align 4
  store i32 %173, i32* %17, align 4
  br label %187

174:                                              ; preds = %169
  %175 = load i32, i32* %13, align 4
  %176 = icmp eq i32 %175, 2
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %17, align 4
  br label %186

179:                                              ; preds = %174
  %180 = load i32, i32* %13, align 4
  %181 = icmp eq i32 %180, 3
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = load i32, i32* %11, align 4
  store i32 %183, i32* %17, align 4
  br label %185

184:                                              ; preds = %179
  store i32 1, i32* %6, align 4
  br label %212

185:                                              ; preds = %182
  br label %186

186:                                              ; preds = %185, %177
  br label %187

187:                                              ; preds = %186, %172
  br label %188

188:                                              ; preds = %187, %167
  %189 = load i32, i32* %17, align 4
  %190 = load %struct.alc_spec*, %struct.alc_spec** %16, align 8
  %191 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 3
  %194 = load i64*, i64** %193, align 8
  %195 = load %struct.alc_spec*, %struct.alc_spec** %16, align 8
  %196 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i64 @found_in_nid_list(i32 %189, i64* %194, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %188
  store i32 1, i32* %6, align 4
  br label %212

203:                                              ; preds = %188
  %204 = load i32, i32* %17, align 4
  %205 = load %struct.alc_spec*, %struct.alc_spec** %16, align 8
  %206 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  store i32 %204, i32* %210, align 4
  br label %211

211:                                              ; preds = %203, %153, %135
  store i32 1, i32* %6, align 4
  br label %212

212:                                              ; preds = %211, %202, %184, %134, %100, %76, %71, %34
  %213 = load i32, i32* %6, align 4
  ret i32 %213
}

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_printd(i8*, i32, i32) #1

declare dso_local i64 @found_in_nid_list(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
