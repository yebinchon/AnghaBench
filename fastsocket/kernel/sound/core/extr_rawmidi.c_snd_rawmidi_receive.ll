; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i64, i32, %struct.snd_rawmidi_runtime* }
%struct.snd_rawmidi_runtime = type { i8*, i32, i32, i32, i32, i32, i32, i64, i64 }

@EBADFD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"snd_rawmidi_receive: input is not active!!!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_rawmidi_receive(%struct.snd_rawmidi_substream* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_rawmidi_substream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_rawmidi_runtime*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %13 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %12, i32 0, i32 2
  %14 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %13, align 8
  store %struct.snd_rawmidi_runtime* %14, %struct.snd_rawmidi_runtime** %11, align 8
  %15 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %16 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EBADFD, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %238

22:                                               ; preds = %3
  %23 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %24 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = call i32 @snd_printd(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %238

31:                                               ; preds = %22
  %32 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %33 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %32, i32 0, i32 4
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %82

38:                                               ; preds = %31
  %39 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %40 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %44 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %47 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %38
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %55 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %58 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %56, i64 %61
  store i8 %53, i8* %62, align 1
  %63 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %64 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %67 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = srem i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %71 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %81

76:                                               ; preds = %38
  %77 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %78 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  br label %81

81:                                               ; preds = %76, %50
  br label %210

82:                                               ; preds = %31
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %86 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %90 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %93 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %91, %94
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %82
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %99, %82
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %104 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %107 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %105, %108
  %110 = icmp sgt i32 %102, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %101
  %112 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %113 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %116 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %114, %117
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %111, %101
  %120 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %121 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %124 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %122, i64 %126
  %128 = load i8*, i8** %6, align 8
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @memcpy(i8* %127, i8* %128, i32 %129)
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %133 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %137 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %140 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = srem i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %145 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %7, align 4
  %150 = sub nsw i32 %149, %148
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %209

156:                                              ; preds = %119
  %157 = load i32, i32* %10, align 4
  %158 = load i8*, i8** %6, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  store i8* %160, i8** %6, align 8
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %164 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %167 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 %165, %168
  %170 = icmp sgt i32 %162, %169
  br i1 %170, label %171, label %187

171:                                              ; preds = %156
  %172 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %173 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %176 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %174, %177
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %10, align 4
  %181 = sub nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %184 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %183, i32 0, i32 8
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, %182
  store i64 %186, i64* %184, align 8
  br label %187

187:                                              ; preds = %171, %156
  %188 = load i32, i32* %10, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %208

190:                                              ; preds = %187
  %191 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %192 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = load i8*, i8** %6, align 8
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @memcpy(i8* %193, i8* %194, i32 %195)
  %197 = load i32, i32* %10, align 4
  %198 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %199 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 8
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %202 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, %200
  store i32 %204, i32* %202, align 8
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %9, align 4
  br label %208

208:                                              ; preds = %190, %187
  br label %209

209:                                              ; preds = %208, %119
  br label %210

210:                                              ; preds = %209, %81
  %211 = load i32, i32* %9, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %232

213:                                              ; preds = %210
  %214 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %215 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %214, i32 0, i32 7
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %213
  %219 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %220 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %219, i32 0, i32 6
  %221 = call i32 @tasklet_schedule(i32* %220)
  br label %231

222:                                              ; preds = %213
  %223 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %224 = call i64 @snd_rawmidi_ready(%struct.snd_rawmidi_substream* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %222
  %227 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %228 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %227, i32 0, i32 5
  %229 = call i32 @wake_up(i32* %228)
  br label %230

230:                                              ; preds = %226, %222
  br label %231

231:                                              ; preds = %230, %218
  br label %232

232:                                              ; preds = %231, %210
  %233 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %11, align 8
  %234 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %233, i32 0, i32 4
  %235 = load i64, i64* %8, align 8
  %236 = call i32 @spin_unlock_irqrestore(i32* %234, i64 %235)
  %237 = load i32, i32* %9, align 4
  store i32 %237, i32* %4, align 4
  br label %238

238:                                              ; preds = %232, %27, %19
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local i32 @snd_printd(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i64 @snd_rawmidi_ready(%struct.snd_rawmidi_substream*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
