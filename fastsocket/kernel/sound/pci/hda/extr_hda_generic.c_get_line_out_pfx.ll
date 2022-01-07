; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_get_line_out_pfx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_get_line_out_pfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64, i32*, i32*, %struct.TYPE_4__, %struct.TYPE_3__, i32, %struct.auto_pin_cfg }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32*, i32* }
%struct.auto_pin_cfg = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"PCM\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@channel_name = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Bass Speaker\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Headphone\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hda_codec*, i32, i32*, i32)* @get_line_out_pfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_line_out_pfx(%struct.hda_codec* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hda_gen_spec*, align 8
  %11 = alloca %struct.auto_pin_cfg*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %13, align 8
  store %struct.hda_gen_spec* %14, %struct.hda_gen_spec** %10, align 8
  %15 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %16 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %15, i32 0, i32 6
  store %struct.auto_pin_cfg* %16, %struct.auto_pin_cfg** %11, align 8
  %17 = load i32*, i32** %8, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %19 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %45

22:                                               ; preds = %4
  %23 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %24 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %22
  %28 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %29 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %27
  %33 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %34 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %39 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %44, i8** %5, align 8
  br label %187

45:                                               ; preds = %32, %27, %22, %4
  %46 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %47 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %80

51:                                               ; preds = %45
  %52 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %53 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %80, label %56

56:                                               ; preds = %51
  %57 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %58 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %56
  %65 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %66 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %64
  %73 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %74 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %79, i8** %5, align 8
  br label %187

80:                                               ; preds = %64, %56, %51, %45
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %83 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i8**, i8*** @channel_name, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %5, align 8
  br label %187

92:                                               ; preds = %80
  %93 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %94 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %163 [
    i32 128, label %96
    i32 129, label %132
  ]

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %115, label %99

99:                                               ; preds = %96
  %100 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %101 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %106 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %107 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @path_has_mixer(%struct.hda_codec* %105, i32 %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %104
  br label %163

115:                                              ; preds = %104, %99, %96
  %116 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %117 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %187

121:                                              ; preds = %115
  %122 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %123 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  store i8* %130, i8** %5, align 8
  br label %187

131:                                              ; preds = %121
  br label %163

132:                                              ; preds = %92
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %151, label %135

135:                                              ; preds = %132
  %136 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %137 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %135
  %141 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %142 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %143 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @path_has_mixer(%struct.hda_codec* %141, i32 %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %140
  br label %163

151:                                              ; preds = %140, %135, %132
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %156 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %163

160:                                              ; preds = %154, %151
  %161 = load i32, i32* %7, align 4
  %162 = load i32*, i32** %8, align 8
  store i32 %161, i32* %162, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %187

163:                                              ; preds = %92, %159, %150, %131, %114
  %164 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %165 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %170 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %168
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %187

174:                                              ; preds = %168, %163
  %175 = load i32, i32* %7, align 4
  %176 = load i8**, i8*** @channel_name, align 8
  %177 = call i32 @ARRAY_SIZE(i8** %176)
  %178 = icmp sge i32 %175, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = call i32 (...) @snd_BUG()
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %187

181:                                              ; preds = %174
  %182 = load i8**, i8*** @channel_name, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  %186 = load i8*, i8** %185, align 8
  store i8* %186, i8** %5, align 8
  br label %187

187:                                              ; preds = %181, %179, %173, %160, %126, %120, %86, %72, %37
  %188 = load i8*, i8** %5, align 8
  ret i8* %188
}

declare dso_local i32 @path_has_mixer(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @snd_BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
