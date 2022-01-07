; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_uart6850.c_poll_uart6850.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_uart6850.c_poll_uart6850.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@uart6850_opened = common dso_local global i32 0, align 4
@OPEN_READ = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@uart6850_timer = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @poll_uart6850 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_uart6850(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @uart6850_opened, align 4
  %5 = load i32, i32* @OPEN_READ, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %22

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @lock, i64 %10)
  %12 = call i64 (...) @input_avail()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 (...) @uart6850_input_loop()
  br label %16

16:                                               ; preds = %14, %9
  %17 = load i64, i64* @jiffies, align 8
  %18 = add nsw i64 1, %17
  store i64 %18, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uart6850_timer, i32 0, i32 0), align 8
  %19 = call i32 @add_timer(%struct.TYPE_3__* @uart6850_timer)
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @lock, i64 %20)
  br label %22

22:                                               ; preds = %16, %8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @input_avail(...) #1

declare dso_local i32 @uart6850_input_loop(...) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
