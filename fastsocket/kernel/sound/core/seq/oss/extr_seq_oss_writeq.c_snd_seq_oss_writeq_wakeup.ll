; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_writeq.c_snd_seq_oss_writeq_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_writeq.c_snd_seq_oss_writeq_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_writeq = type { i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_oss_writeq_wakeup(%struct.seq_oss_writeq* %0, i32 %1) #0 {
  %3 = alloca %struct.seq_oss_writeq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.seq_oss_writeq* %0, %struct.seq_oss_writeq** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  %7 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  %12 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  %14 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  %16 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %15, i32 0, i32 1
  %17 = call i64 @waitqueue_active(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  %21 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %20, i32 0, i32 1
  %22 = call i32 @wake_up(i32* %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.seq_oss_writeq*, %struct.seq_oss_writeq** %3, align 8
  %25 = getelementptr inbounds %struct.seq_oss_writeq, %struct.seq_oss_writeq* %24, i32 0, i32 0
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
