; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_dsp_write_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_dsp_write_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@dev = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@F_WRITING = common dso_local global i32 0, align 4
@F_WRITEFLUSH = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@DAP_BUFF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dsp_write_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsp_write_flush() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dev, i32 0, i32 0), align 4
  %2 = load i32, i32* @FMODE_WRITE, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @F_WRITING, align 4
  %7 = call i32 @test_bit(i32 %6, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dev, i32 0, i32 1))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %0
  br label %31

10:                                               ; preds = %5
  %11 = load i32, i32* @F_WRITEFLUSH, align 4
  %12 = call i32 @set_bit(i32 %11, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dev, i32 0, i32 1))
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dev, i32 0, i32 2, i32 0), align 4
  %14 = call i32 @get_play_delay_jiffies(i32 %13)
  %15 = call i32 @interruptible_sleep_on_timeout(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dev, i32 0, i32 3), i32 %14)
  %16 = load i32, i32* @F_WRITEFLUSH, align 4
  %17 = call i32 @clear_bit(i32 %16, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dev, i32 0, i32 1))
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %19 = call i32 @signal_pending(%struct.TYPE_6__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %10
  %22 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @DAP_BUFF_SIZE, align 4
  %26 = call i32 @get_play_delay_jiffies(i32 %25)
  %27 = call i32 @schedule_timeout(i32 %26)
  br label %28

28:                                               ; preds = %21, %10
  %29 = load i32, i32* @F_WRITING, align 4
  %30 = call i32 @clear_bit(i32 %29, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dev, i32 0, i32 1))
  br label %31

31:                                               ; preds = %28, %9
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @interruptible_sleep_on_timeout(i32*, i32) #1

declare dso_local i32 @get_play_delay_jiffies(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @signal_pending(%struct.TYPE_6__*) #1

declare dso_local i32 @schedule_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
