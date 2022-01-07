; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_readq.c_snd_seq_oss_readq_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_readq.c_snd_seq_oss_readq_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_readq = type { i64, i32, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_oss_readq_clear(%struct.seq_oss_readq* %0) #0 {
  %2 = alloca %struct.seq_oss_readq*, align 8
  store %struct.seq_oss_readq* %0, %struct.seq_oss_readq** %2, align 8
  %3 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %2, align 8
  %4 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %2, align 8
  %9 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %2, align 8
  %11 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %2, align 8
  %13 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %2, align 8
  %16 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %15, i32 0, i32 1
  %17 = call i64 @waitqueue_active(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %2, align 8
  %21 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %20, i32 0, i32 1
  %22 = call i32 @wake_up(i32* %21)
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.seq_oss_readq*, %struct.seq_oss_readq** %2, align 8
  %25 = getelementptr inbounds %struct.seq_oss_readq, %struct.seq_oss_readq* %24, i32 0, i32 0
  store i64 -1, i64* %25, align 8
  ret void
}

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
