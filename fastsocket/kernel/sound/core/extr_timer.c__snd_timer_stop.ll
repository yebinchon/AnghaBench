; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c__snd_timer_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_timer.c__snd_timer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_instance = type { i32, i32, i32, %struct.snd_timer* }
%struct.snd_timer = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.snd_timer*)*, i32 (%struct.snd_timer*)* }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_TIMER_IFLG_SLAVE = common dso_local global i32 0, align 4
@slave_active_lock = common dso_local global i32 0, align 4
@SNDRV_TIMER_IFLG_RUNNING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_TIMER_FLG_RESCHED = common dso_local global i32 0, align 4
@SNDRV_TIMER_FLG_CHANGE = common dso_local global i32 0, align 4
@SNDRV_TIMER_IFLG_START = common dso_local global i32 0, align 4
@SNDRV_TIMER_EVENT_RESOLUTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_timer_instance*, i32, i32)* @_snd_timer_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_snd_timer_stop(%struct.snd_timer_instance* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_timer_instance*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_timer*, align 8
  %9 = alloca i64, align 8
  store %struct.snd_timer_instance* %0, %struct.snd_timer_instance** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %11 = icmp ne %struct.snd_timer_instance* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @snd_BUG_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %142

19:                                               ; preds = %3
  %20 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %21 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SNDRV_TIMER_IFLG_SLAVE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @spin_lock_irqsave(i32* @slave_active_lock, i64 %30)
  %32 = load i32, i32* @SNDRV_TIMER_IFLG_RUNNING, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %35 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @slave_active_lock, i64 %38)
  br label %40

40:                                               ; preds = %29, %26
  br label %133

41:                                               ; preds = %19
  %42 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %43 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %42, i32 0, i32 3
  %44 = load %struct.snd_timer*, %struct.snd_timer** %43, align 8
  store %struct.snd_timer* %44, %struct.snd_timer** %8, align 8
  %45 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %46 = icmp ne %struct.snd_timer* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %142

50:                                               ; preds = %41
  %51 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %52 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %51, i32 0, i32 1
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %56 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %55, i32 0, i32 2
  %57 = call i32 @list_del_init(i32* %56)
  %58 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %59 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %58, i32 0, i32 1
  %60 = call i32 @list_del_init(i32* %59)
  %61 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %62 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SNDRV_TIMER_IFLG_RUNNING, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %116

67:                                               ; preds = %50
  %68 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %69 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %116, label %73

73:                                               ; preds = %67
  %74 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %75 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32 (%struct.snd_timer*)*, i32 (%struct.snd_timer*)** %76, align 8
  %78 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %79 = call i32 %77(%struct.snd_timer* %78)
  %80 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %81 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @SNDRV_TIMER_FLG_RESCHED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %115

86:                                               ; preds = %73
  %87 = load i32, i32* @SNDRV_TIMER_FLG_RESCHED, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %90 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %94 = call i32 @snd_timer_reschedule(%struct.snd_timer* %93, i32 0)
  %95 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %96 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @SNDRV_TIMER_FLG_CHANGE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %86
  %102 = load i32, i32* @SNDRV_TIMER_FLG_CHANGE, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %105 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %109 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32 (%struct.snd_timer*)*, i32 (%struct.snd_timer*)** %110, align 8
  %112 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %113 = call i32 %111(%struct.snd_timer* %112)
  br label %114

114:                                              ; preds = %101, %86
  br label %115

115:                                              ; preds = %114, %73
  br label %116

116:                                              ; preds = %115, %67, %50
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* @SNDRV_TIMER_IFLG_RUNNING, align 4
  %121 = load i32, i32* @SNDRV_TIMER_IFLG_START, align 4
  %122 = or i32 %120, %121
  %123 = xor i32 %122, -1
  %124 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %125 = getelementptr inbounds %struct.snd_timer_instance, %struct.snd_timer_instance* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %119, %116
  %129 = load %struct.snd_timer*, %struct.snd_timer** %8, align 8
  %130 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %129, i32 0, i32 1
  %131 = load i64, i64* %9, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  br label %133

133:                                              ; preds = %128, %40
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @SNDRV_TIMER_EVENT_RESOLUTION, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load %struct.snd_timer_instance*, %struct.snd_timer_instance** %5, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @snd_timer_notify1(%struct.snd_timer_instance* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %133
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %47, %16
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @snd_timer_reschedule(%struct.snd_timer*, i32) #1

declare dso_local i32 @snd_timer_notify1(%struct.snd_timer_instance*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
