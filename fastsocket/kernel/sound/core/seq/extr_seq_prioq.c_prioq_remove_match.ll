; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_prioq.c_prioq_remove_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_prioq.c_prioq_remove_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_remove_events = type { i32, i64, i32, i64, %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.snd_seq_event = type { i32, i64, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }

@SNDRV_SEQ_REMOVE_DEST = common dso_local global i32 0, align 4
@SNDRV_SEQ_REMOVE_DEST_CHANNEL = common dso_local global i32 0, align 4
@SNDRV_SEQ_REMOVE_TIME_AFTER = common dso_local global i32 0, align 4
@SNDRV_SEQ_REMOVE_TIME_TICK = common dso_local global i32 0, align 4
@SNDRV_SEQ_REMOVE_TIME_BEFORE = common dso_local global i32 0, align 4
@SNDRV_SEQ_REMOVE_EVENT_TYPE = common dso_local global i32 0, align 4
@SNDRV_SEQ_REMOVE_IGNORE_OFF = common dso_local global i32 0, align 4
@SNDRV_SEQ_REMOVE_TAG_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_remove_events*, %struct.snd_seq_event*)* @prioq_remove_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prioq_remove_match(%struct.snd_seq_remove_events* %0, %struct.snd_seq_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_remove_events*, align 8
  %5 = alloca %struct.snd_seq_event*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_seq_remove_events* %0, %struct.snd_seq_remove_events** %4, align 8
  store %struct.snd_seq_event* %1, %struct.snd_seq_event** %5, align 8
  %7 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %8 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SNDRV_SEQ_REMOVE_DEST, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %15 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %19 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %17, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %13
  %24 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %25 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %29 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23, %13
  store i32 0, i32* %3, align 4
  br label %178

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %37 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SNDRV_SEQ_REMOVE_DEST_CHANNEL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %35
  %43 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %44 = call i32 @snd_seq_ev_is_channel_type(%struct.snd_seq_event* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %178

47:                                               ; preds = %42
  %48 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %49 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %54 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %178

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %35
  %60 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %61 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SNDRV_SEQ_REMOVE_TIME_AFTER, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %94

66:                                               ; preds = %59
  %67 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %68 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SNDRV_SEQ_REMOVE_TIME_TICK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %75 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %78 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = call i32 @snd_seq_compare_tick_time(i32* %76, i32* %79)
  store i32 %80, i32* %6, align 4
  br label %89

81:                                               ; preds = %66
  %82 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %83 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %86 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = call i32 @snd_seq_compare_real_time(i32* %84, i32* %87)
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %81, %73
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %178

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %59
  %95 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %96 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @SNDRV_SEQ_REMOVE_TIME_BEFORE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %129

101:                                              ; preds = %94
  %102 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %103 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SNDRV_SEQ_REMOVE_TIME_TICK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %101
  %109 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %110 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %113 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = call i32 @snd_seq_compare_tick_time(i32* %111, i32* %114)
  store i32 %115, i32* %6, align 4
  br label %124

116:                                              ; preds = %101
  %117 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %118 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %121 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = call i32 @snd_seq_compare_real_time(i32* %119, i32* %122)
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %116, %108
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %178

128:                                              ; preds = %124
  br label %129

129:                                              ; preds = %128, %94
  %130 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %131 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @SNDRV_SEQ_REMOVE_EVENT_TYPE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %129
  %137 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %138 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %141 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %178

145:                                              ; preds = %136
  br label %146

146:                                              ; preds = %145, %129
  %147 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %148 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @SNDRV_SEQ_REMOVE_IGNORE_OFF, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %146
  %154 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %155 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  switch i32 %156, label %158 [
    i32 128, label %157
  ]

157:                                              ; preds = %153
  store i32 0, i32* %3, align 4
  br label %178

158:                                              ; preds = %153
  br label %159

159:                                              ; preds = %158
  br label %160

160:                                              ; preds = %159, %146
  %161 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %162 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @SNDRV_SEQ_REMOVE_TAG_MATCH, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %160
  %168 = load %struct.snd_seq_remove_events*, %struct.snd_seq_remove_events** %4, align 8
  %169 = getelementptr inbounds %struct.snd_seq_remove_events, %struct.snd_seq_remove_events* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %172 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %170, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  store i32 0, i32* %3, align 4
  br label %178

176:                                              ; preds = %167
  br label %177

177:                                              ; preds = %176, %160
  store i32 1, i32* %3, align 4
  br label %178

178:                                              ; preds = %177, %175, %157, %144, %127, %92, %57, %46, %33
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @snd_seq_ev_is_channel_type(%struct.snd_seq_event*) #1

declare dso_local i32 @snd_seq_compare_tick_time(i32*, i32*) #1

declare dso_local i32 @snd_seq_compare_real_time(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
