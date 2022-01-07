; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_event.c_note_on_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_event.c_note_on_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { %struct.seq_oss_synthinfo* }
%struct.seq_oss_synthinfo = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_seq_event = type { i32 }

@SNDRV_SEQ_EVENT_NOTEON = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_KEYPRESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_NOTEOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_oss_devinfo*, i32, i32, i32, i32, %struct.snd_seq_event*)* @note_on_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @note_on_event(%struct.seq_oss_devinfo* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.snd_seq_event* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.seq_oss_devinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_seq_event*, align 8
  %14 = alloca %struct.seq_oss_synthinfo*, align 8
  %15 = alloca i32, align 4
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.snd_seq_event* %5, %struct.snd_seq_event** %13, align 8
  %16 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %17 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %16, i32 0, i32 0
  %18 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %18, i64 %20
  store %struct.seq_oss_synthinfo* %21, %struct.seq_oss_synthinfo** %14, align 8
  %22 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %23 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %205 [
    i32 129, label %26
    i32 130, label %174
    i32 128, label %183
  ]

26:                                               ; preds = %6
  %27 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %28 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %37 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34, %31, %26
  %41 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEON, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %48 = call i32 @set_note_event(%struct.seq_oss_devinfo* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, %struct.snd_seq_event* %47)
  store i32 %48, i32* %7, align 4
  br label %208

49:                                               ; preds = %34
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 255
  br i1 %51, label %52, label %100

52:                                               ; preds = %49
  %53 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %54 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %100

62:                                               ; preds = %52
  %63 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %64 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* @SNDRV_SEQ_EVENT_KEYPRESS, align 4
  store i32 %73, i32* %15, align 4
  br label %76

74:                                               ; preds = %62
  %75 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEON, align 4
  store i32 %75, i32* %15, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %79 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 %77, i32* %84, align 4
  %85 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %90 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %99 = call i32 @set_note_event(%struct.seq_oss_devinfo* %85, i32 %86, i32 %87, i32 %88, i32 %96, i32 %97, %struct.snd_seq_event* %98)
  store i32 %99, i32* %7, align 4
  br label %208

100:                                              ; preds = %52, %49
  %101 = load i32, i32* %11, align 4
  %102 = icmp sge i32 %101, 128
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %7, align 4
  br label %208

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %110 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %108, %116
  br i1 %117, label %118, label %143

118:                                              ; preds = %107
  %119 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %120 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %118
  %129 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEOFF, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %134 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %142 = call i32 @set_note_event(%struct.seq_oss_devinfo* %129, i32 %130, i32 %131, i32 %132, i32 %140, i32 0, %struct.snd_seq_event* %141)
  br label %143

143:                                              ; preds = %128, %118, %107
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %146 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i32 %144, i32* %151, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %154 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %153, i32 0, i32 1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  store i32 %152, i32* %159, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %143
  %163 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEON, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %170 = call i32 @set_note_event(%struct.seq_oss_devinfo* %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, %struct.snd_seq_event* %169)
  store i32 %170, i32* %7, align 4
  br label %208

171:                                              ; preds = %143
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %7, align 4
  br label %208

174:                                              ; preds = %6
  %175 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEON, align 4
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %12, align 4
  %181 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %182 = call i32 @set_note_event(%struct.seq_oss_devinfo* %175, i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, %struct.snd_seq_event* %181)
  store i32 %182, i32* %7, align 4
  br label %208

183:                                              ; preds = %6
  %184 = load i32, i32* %11, align 4
  %185 = icmp sge i32 %184, 128
  br i1 %185, label %186, label %196

186:                                              ; preds = %183
  %187 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* @SNDRV_SEQ_EVENT_KEYPRESS, align 4
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %11, align 4
  %192 = sub nsw i32 %191, 128
  %193 = load i32, i32* %12, align 4
  %194 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %195 = call i32 @set_note_event(%struct.seq_oss_devinfo* %187, i32 %188, i32 %189, i32 %190, i32 %192, i32 %193, %struct.snd_seq_event* %194)
  store i32 %195, i32* %7, align 4
  br label %208

196:                                              ; preds = %183
  %197 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEON, align 4
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* %12, align 4
  %203 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %204 = call i32 @set_note_event(%struct.seq_oss_devinfo* %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, %struct.snd_seq_event* %203)
  store i32 %204, i32* %7, align 4
  br label %208

205:                                              ; preds = %6
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %7, align 4
  br label %208

208:                                              ; preds = %205, %196, %186, %174, %171, %162, %103, %76, %40
  %209 = load i32, i32* %7, align 4
  ret i32 %209
}

declare dso_local i32 @set_note_event(%struct.seq_oss_devinfo*, i32, i32, i32, i32, i32, %struct.snd_seq_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
