; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wavefront/extr_wavefront_synth.c_wavefront_synth_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wavefront/extr_wavefront_synth.c_wavefront_synth_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32*, i32*, i32, i32 }

@WF_DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"synth control with cmd 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"interrupts disabled.\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"interrupts enabled.\0A\00", align 1
@WF_MAX_SAMPLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid slot ID %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"debug = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"support for sample alias upload being considered.\0A\00", align 1
@WF_PATCH_BYTES = common dso_local global i32 0, align 4
@WF_PROGRAM_BYTES = common dso_local global i32 0, align 4
@WF_DRUM_BYTES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"support for sample aliases still being considered.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_10__*)* @wavefront_synth_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wavefront_synth_control(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca [2 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %6, align 8
  %11 = load i32, i32* @WF_DEBUG_CMD, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DPRINT(i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %133 [
    i32 141, label %19
    i32 140, label %27
    i32 138, label %35
    i32 136, label %43
    i32 139, label %53
    i32 142, label %94
    i32 133, label %106
    i32 134, label %118
    i32 131, label %126
  ]

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @outb(i32 160, i32 %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  store i32 0, i32* %3, align 4
  br label %205

27:                                               ; preds = %2
  %28 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @outb(i32 224, i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  store i32 0, i32* %3, align 4
  br label %205

35:                                               ; preds = %2
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %38, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %205

43:                                               ; preds = %2
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  store i32 0, i32* %52, align 8
  store i32 0, i32* %3, align 4
  br label %205

53:                                               ; preds = %2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 7
  %65 = or i32 %58, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %53
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @WF_MAX_SAMPLE, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %68, %53
  %73 = load i32, i32* %8, align 4
  %74 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %205

80:                                               ; preds = %68
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %87, i32* %91, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  store i32 0, i32* %93, align 8
  store i32 0, i32* %3, align 4
  br label %205

94:                                               ; preds = %2
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  store i32 0, i32* %3, align 4
  br label %205

106:                                              ; preds = %2
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %112 = call i32 @munge_int32(i32 %110, i8* %111, i32 2)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %117 = call i32 @memcpy(i32* %115, i8* %116, i32 2)
  br label %133

118:                                              ; preds = %2
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @wavefront_fetch_multisample(%struct.TYPE_11__* %119, i32* %122)
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  store i32 0, i32* %3, align 4
  br label %205

126:                                              ; preds = %2
  %127 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %128 = load i32, i32* @EINVAL, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %205

133:                                              ; preds = %2, %106
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @snd_wavefront_cmd(%struct.TYPE_11__* %134, i32 %137, i32* %140, i32* %143)
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %204

151:                                              ; preds = %133
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  switch i32 %154, label %203 [
    i32 137, label %155
    i32 133, label %162
    i32 132, label %171
    i32 135, label %180
    i32 130, label %190
    i32 131, label %195
    i32 129, label %197
    i32 128, label %200
  ]

155:                                              ; preds = %151
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @demunge_int32(i32* %158, i32 4)
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 4
  br label %203

162:                                              ; preds = %151
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* @WF_PATCH_BYTES, align 4
  %170 = call i32 @demunge_buf(i32* %165, i32* %168, i32 %169)
  br label %203

171:                                              ; preds = %151
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* @WF_PROGRAM_BYTES, align 4
  %179 = call i32 @demunge_buf(i32* %174, i32* %177, i32 %178)
  br label %203

180:                                              ; preds = %151
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* @WF_DRUM_BYTES, align 4
  %188 = sub nsw i32 %187, 1
  %189 = call i32 @demunge_buf(i32* %183, i32* %186, i32 %188)
  br label %203

190:                                              ; preds = %151
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @process_sample_hdr(i32* %193)
  br label %203

195:                                              ; preds = %151
  %196 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %203

197:                                              ; preds = %151
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %199 = call i32 @snd_wavefront_midi_disable_virtual(%struct.TYPE_12__* %198)
  br label %203

200:                                              ; preds = %151
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %202 = call i32 @snd_wavefront_midi_enable_virtual(%struct.TYPE_12__* %201)
  br label %203

203:                                              ; preds = %151, %200, %197, %195, %190, %180, %171, %162, %155
  br label %204

204:                                              ; preds = %203, %133
  store i32 0, i32* %3, align 4
  br label %205

205:                                              ; preds = %204, %126, %118, %94, %80, %72, %43, %35, %27, %19
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @DPRINT(i32, i8*, i32) #1

declare dso_local i32 @snd_printk(i8*, ...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @munge_int32(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @wavefront_fetch_multisample(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @snd_wavefront_cmd(%struct.TYPE_11__*, i32, i32*, i32*) #1

declare dso_local i32 @demunge_int32(i32*, i32) #1

declare dso_local i32 @demunge_buf(i32*, i32*, i32) #1

declare dso_local i32 @process_sample_hdr(i32*) #1

declare dso_local i32 @snd_wavefront_midi_disable_virtual(%struct.TYPE_12__*) #1

declare dso_local i32 @snd_wavefront_midi_enable_virtual(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
