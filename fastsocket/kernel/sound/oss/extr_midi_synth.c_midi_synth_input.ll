; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midi_synth.c_midi_synth_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midi_synth.c_midi_synth_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.midi_input_info }
%struct.midi_input_info = type { i32, i32, i32, i8*, i8 }

@midi_synth_input.len_tab = internal global [8 x i8] c"\02\02\02\02\01\01\02\00", align 1
@num_midis = common dso_local global i32 0, align 4
@midi_devs = common dso_local global %struct.TYPE_2__** null, align 8
@midi2synth = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"MIDI%d: Unexpected state %d (%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8)* @midi_synth_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @midi_synth_input(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.midi_input_info*, align 8
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @num_midis, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @midi_devs, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %14, i64 %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp eq %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %9, %2
  br label %237

21:                                               ; preds = %13
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 254
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %237

26:                                               ; preds = %21
  %27 = load i32*, i32** @midi2synth, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @midi_devs, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.midi_input_info* %37, %struct.midi_input_info** %6, align 8
  %38 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %39 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %227 [
    i32 129, label %41
    i32 130, label %185
    i32 128, label %215
  ]

41:                                               ; preds = %26
  %42 = load i8, i8* %4, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 128
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %125

46:                                               ; preds = %41
  %47 = load i8, i8* %4, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 240
  %50 = icmp eq i32 %49, 240
  br i1 %50, label %51, label %102

51:                                               ; preds = %46
  %52 = load i8, i8* %4, align 1
  %53 = zext i8 %52 to i32
  switch i32 %53, label %81 [
    i32 240, label %54
    i32 241, label %57
    i32 243, label %57
    i32 242, label %69
  ]

54:                                               ; preds = %51
  %55 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %56 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %55, i32 0, i32 0
  store i32 128, i32* %56, align 8
  br label %101

57:                                               ; preds = %51, %51
  %58 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %59 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %58, i32 0, i32 0
  store i32 130, i32* %59, align 8
  %60 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %61 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %63 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  %64 = load i8, i8* %4, align 1
  %65 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %66 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  store i8 %64, i8* %68, align 1
  br label %101

69:                                               ; preds = %51
  %70 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %71 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %70, i32 0, i32 0
  store i32 130, i32* %71, align 8
  %72 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %73 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %75 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %74, i32 0, i32 2
  store i32 2, i32* %75, align 8
  %76 = load i8, i8* %4, align 1
  %77 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %78 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 %76, i8* %80, align 1
  br label %101

81:                                               ; preds = %51
  %82 = load i8, i8* %4, align 1
  %83 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %84 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  store i8 %82, i8* %86, align 1
  %87 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %88 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %91 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %94 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @do_midi_msg(i32 %89, i8* %92, i32 %95)
  %97 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %98 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %97, i32 0, i32 1
  store i32 0, i32* %98, align 4
  %99 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %100 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %99, i32 0, i32 2
  store i32 0, i32* %100, align 8
  br label %101

101:                                              ; preds = %81, %69, %57, %54
  br label %124

102:                                              ; preds = %46
  %103 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %104 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %103, i32 0, i32 0
  store i32 130, i32* %104, align 8
  %105 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %106 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  %107 = load i8, i8* %4, align 1
  %108 = zext i8 %107 to i32
  %109 = ashr i32 %108, 4
  %110 = sub nsw i32 %109, 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [8 x i8], [8 x i8]* @midi_synth_input.len_tab, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %116 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load i8, i8* %4, align 1
  %118 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %119 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %118, i32 0, i32 4
  store i8 %117, i8* %119, align 8
  %120 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %121 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  store i8 %117, i8* %123, align 1
  br label %124

124:                                              ; preds = %102, %101
  br label %184

125:                                              ; preds = %41
  %126 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %127 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %126, i32 0, i32 4
  %128 = load i8, i8* %127, align 8
  %129 = zext i8 %128 to i32
  %130 = and i32 %129, 128
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %183

132:                                              ; preds = %125
  %133 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %134 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %133, i32 0, i32 1
  store i32 2, i32* %134, align 4
  %135 = load i8, i8* %4, align 1
  %136 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %137 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  store i8 %135, i8* %139, align 1
  %140 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %141 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %140, i32 0, i32 4
  %142 = load i8, i8* %141, align 8
  %143 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %144 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %143, i32 0, i32 3
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  store i8 %142, i8* %146, align 1
  %147 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %148 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = ashr i32 %152, 4
  %154 = sub nsw i32 %153, 8
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [8 x i8], [8 x i8]* @midi_synth_input.len_tab, i64 0, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = sub nsw i32 %158, 1
  %160 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %161 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %163 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %132
  %167 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %168 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %167, i32 0, i32 0
  store i32 130, i32* %168, align 8
  br label %182

169:                                              ; preds = %132
  %170 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %171 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %170, i32 0, i32 0
  store i32 129, i32* %171, align 8
  %172 = load i32, i32* %5, align 4
  %173 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %174 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %173, i32 0, i32 3
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %177 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @do_midi_msg(i32 %172, i8* %175, i32 %178)
  %180 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %181 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %180, i32 0, i32 1
  store i32 0, i32* %181, align 4
  br label %182

182:                                              ; preds = %169, %166
  br label %183

183:                                              ; preds = %182, %125
  br label %184

184:                                              ; preds = %183, %124
  br label %237

185:                                              ; preds = %26
  %186 = load i8, i8* %4, align 1
  %187 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %188 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %187, i32 0, i32 3
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %191 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i8, i8* %189, i64 %194
  store i8 %186, i8* %195, align 1
  %196 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %197 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %197, align 8
  %200 = icmp sle i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %185
  %202 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %203 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %202, i32 0, i32 0
  store i32 129, i32* %203, align 8
  %204 = load i32, i32* %5, align 4
  %205 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %206 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %205, i32 0, i32 3
  %207 = load i8*, i8** %206, align 8
  %208 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %209 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @do_midi_msg(i32 %204, i8* %207, i32 %210)
  %212 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %213 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %212, i32 0, i32 1
  store i32 0, i32* %213, align 4
  br label %214

214:                                              ; preds = %201, %185
  br label %237

215:                                              ; preds = %26
  %216 = load i8, i8* %4, align 1
  %217 = zext i8 %216 to i32
  %218 = icmp eq i32 %217, 247
  br i1 %218, label %219, label %226

219:                                              ; preds = %215
  %220 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %221 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %220, i32 0, i32 0
  store i32 129, i32* %221, align 8
  %222 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %223 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %222, i32 0, i32 2
  store i32 0, i32* %223, align 8
  %224 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %225 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %224, i32 0, i32 1
  store i32 0, i32* %225, align 4
  br label %226

226:                                              ; preds = %219, %215
  br label %237

227:                                              ; preds = %26
  %228 = load i32, i32* %3, align 4
  %229 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %230 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i8, i8* %4, align 1
  %233 = zext i8 %232 to i32
  %234 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %228, i32 %231, i32 %233)
  %235 = load %struct.midi_input_info*, %struct.midi_input_info** %6, align 8
  %236 = getelementptr inbounds %struct.midi_input_info, %struct.midi_input_info* %235, i32 0, i32 0
  store i32 129, i32* %236, align 8
  br label %237

237:                                              ; preds = %20, %25, %227, %226, %214, %184
  ret void
}

declare dso_local i32 @do_midi_msg(i32, i8*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
